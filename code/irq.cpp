#include "raspberrylib.h" 
#include "./libs/mem.h"
#include "console.h"

#define RPI_INTERRUPT_CONTROLLER_BASE   0x2000B200
#define RPI_ARMTIMER_BASE               0x2000B400

#define RPI_ARMTIMER_CTRL_23BIT         ( 1 << 1 )
#define RPI_ARMTIMER_CTRL_PRESCALE_1    ( 0 << 2 )
#define RPI_ARMTIMER_CTRL_PRESCALE_16   ( 1 << 2 )
#define RPI_ARMTIMER_CTRL_PRESCALE_256  ( 2 << 2 )
#define RPI_ARMTIMER_CTRL_INT_ENABLE    ( 1 << 5 )
#define RPI_ARMTIMER_CTRL_INT_DISABLE   ( 0 << 5 )
#define RPI_ARMTIMER_CTRL_ENABLE        ( 1 << 7 )
#define RPI_ARMTIMER_CTRL_DISABLE       ( 0 << 7 )
 
typedef struct {
    volatile uint32_t Load;
    volatile uint32_t Value;
    volatile uint32_t Control;
    volatile uint32_t IRQClear;
    volatile uint32_t RAWIRQ;
    volatile uint32_t MaskedIRQ;
    volatile uint32_t Reload;
    volatile uint32_t PreDivider;
    volatile uint32_t FreeRunningCounter;
} rpi_arm_timer_t;
    
typedef struct {
	volatile uint32_t IRQ_basic_pending;
	volatile uint32_t IRQ_pending_1;
	volatile uint32_t IRQ_pending_2;
	volatile uint32_t FIQ_control;
	volatile uint32_t Enable_IRQs_1;
	volatile uint32_t Enable_IRQs_2;
	volatile uint32_t Enable_Basic_IRQs;
	volatile uint32_t Disable_IRQs_1;
	volatile uint32_t Disable_IRQs_2;
	volatile uint32_t Disable_Basic_IRQs;
} rpi_irq_controller_t;
        
static rpi_irq_controller_t* rpiIRQController =	(rpi_irq_controller_t*)RPI_INTERRUPT_CONTROLLER_BASE;
static rpi_arm_timer_t* rpiArmTimer = (rpi_arm_timer_t*)RPI_ARMTIMER_BASE;
rpi_arm_timer_t* RPI_GetArmTimer(void) { return rpiArmTimer; }
rpi_irq_controller_t* RPI_GetIrqController( void ) { return rpiIRQController; }
void irq_deactivate(void);
void irq_init(void);

extern "C" struct thread {
	uint32_t addr;
	uint32_t lr;
	uint32_t sptr;
	uint32 pid;
	bool isRun;
	bool isDead;
	bool isLock;
};

// Keep a queue of jobs.
static List<thread*> threads;

// These tell the control thread what's up.
static short irqStatus = 0;

static short ind = 0;
static uint32 guid = 0;
static uint32 turn = 0;
static bool led_on = false;
Console* irqConsole;

void fork(void (*ptr)(void)) {
	thread* t = new thread();
	t->pid = guid++;
	t->isRun = false;
	t->isDead = false;
	t->isLock = false;
	t->addr = (uint32_t)ptr;
	threads.add(t);
}

thread* next_task() {
	int len = threads.getLength();
	thread* result;
	
	// Iterate over the threads an increment until we come to a live thread.
	for ( int i = 0; i < len; i++ ) {
		if ( ++ind >= len )
			ind = 0;
			
		// Find the next one that is not dead.
		result = threads.getAt(ind);
		if ( !result->isDead )
			break;
	}

	return result;
}

void lock() {
	irq_deactivate();
	// Set the current thread to locked.
	uint32 length = threads.getLength();
	if ( length > 0 ) {
		thread* active = threads.getAt(ind);
		active->isLock = true;
	}
	// Resume interrupts.
	irq_init();
}

void unlock() {
	irq_deactivate();
	uint32 length = threads.getLength();
	thread* active = threads.getAt(ind);
	active->isLock = false;
	irq_init();
}

extern "C" void interrupt_vector() {
	// Clear the arm timer interrupt.
	uint32_t ptr_sp;
	uint32_t ptr_lr;

	asm volatile("mov %0,r0\n\t"
				 "mov %1,r1\n\t" 
				 : "=r"(ptr_lr), "=r"(ptr_sp) : : "r0", "r1", "memory");

	
	if ( threads.getLength() == 0 ) {
		return;
	}
		
	// Flip the LED each iteration, to show we're actively capturing
	// interrupts.
	RaspberryLib::SetGPIO(16, !led_on);
	led_on = !led_on;

	// We get the active thread (that which last run) and we
	// store the return pointer and other related information
	// in the thread control block.
	thread* t = threads.getAt(ind);
	bool resumeThread = false;
	
	// Check the irqStatus and finish processing if necessary.
	if ( irqStatus == 1 ) {
		// Enable interrupts again.
		irq_init();
	} else if ( irqStatus == 2 ) {
		// This is bad... We don't actually want to jump to another thread then.
		irq_deactivate();
		resumeThread = true;
	}
	
	// Reset IRQ Status.
	irqStatus = 0;
	
	if ( t->isRun ) {
		t->sptr = ptr_sp;
		t->lr = ptr_lr;
		
		if ( !resumeThread ) {
			thread* next = next_task();
			if (!t->isLock && turn == t->pid)
				turn = next->pid;
			t = next;
		}
	}
	
	if ( !t->isRun ) {
		// Update the ish.
		t->lr = t->addr;
		t->sptr = (uint32_t)alloc_stack(128);
		t->isRun = true;
		RPI_GetArmTimer()->IRQClear = 1;
		
		// We need to allocate a new stack.
		// Then we need to copy the registers over to it.
		asm volatile("mov r0,%0\n\t" // new stack pointer
					 "mov r1,%1\n\t" // old stack pointer
					 "mov r14,%2\n\t"
					 "mov sp,r0\n\t" // move the stack pointer
					 "ldm r1,{r0-r12}\n\t" // load the registers from the old location
					 "subs pc,r14,#4\n\t"
					 : : "r"(t->sptr), "r"(ptr_sp), "r"(t->lr) : "memory", "r0", "r1", "sp", "r14", "pc" );		
		 
		 // This code gets executed after, theoretically, the thread finishes.
		 t->isLock = false;
		 t->isDead = true;
		 while(true) { }
		return;
	}
	
	RPI_GetArmTimer()->IRQClear = 1;
	
	// If the thread is locked, spin.
	while(t->isLock && turn != t->pid) { }
	
	// Otherwise, we can execute our ish.	
	asm volatile("mov r14,%0\n\t"
				 "mov r0,%1\n\t"
				 "mov sp,r0\n\t"
				 "ldm sp,{r0-r12}\n\t"
				 "subs pc,r14,#4\n\t": : "r"(t->lr), "r"(t->sptr) : "memory","sp", "r14", "r0", "pc" );
				 
	return;
}

void irq_init( void ) {
	// Tell the control thread what's what.
	irqStatus = 1;
	RPI_GetIrqController()->Enable_Basic_IRQs = (1<<0);
	
	/* Timer frequency = Clk/256 * 0x400 */
	RPI_GetArmTimer()->Load = 0x100; // Fast 0xa0
	 
	/* Setup the ARM Timer */
	RPI_GetArmTimer()->Control =
			RPI_ARMTIMER_CTRL_23BIT |
			RPI_ARMTIMER_CTRL_ENABLE |
			RPI_ARMTIMER_CTRL_INT_ENABLE |
			RPI_ARMTIMER_CTRL_PRESCALE_256;	
	
	irqStatus = 0;
}

void irq_deactivate() {
	// Tell the control thread what's what.
	irqStatus = 2;
	RPI_GetIrqController()->Enable_Basic_IRQs = 0;
	RPI_GetIrqController()->Disable_Basic_IRQs = (1<<0);
	irqStatus = 0;
}
