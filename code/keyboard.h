#ifndef __KEYBOARD_H_
#define __KEYBOARD_H_

// Include core files.
#include "common.h"

// List all of the functions that our library exports.
extern "C" {
	uint32 KeyboardAddress;
	uint16* KeyboardOldDown;
	char* KeysNoShift;
	char* KeysShift;
	void KeyboardUpdate();
	bool KeyWasDown(uint16 scanCode);
	char KeyboardGetChar();
	extern void UsbInitialise();
	extern void UsbCheckForChange();
	extern int KeyboardCount();
	extern void KbdLoad();
};


#endif
