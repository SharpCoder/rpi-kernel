#!/bin/sh

# Options
compile_mode=0
compile_clean=0
include_output=0

# Compiler Toolchain
compiler=arm-none-eabi
ldlags="-nostdlib -nostartfiles -O2"
gppflags="-ffreestanding -nostdlib -fno-builtin -fno-rtti -fno-exceptions -nostartfiles -O2"

# Folders
boot=../boot
code=../code
debug=../debug

# Obligatory header
clear
echo "INIT COMPILER SCRIPT"
echo ""
echo "Time:      $(date +%Y-%m-%d)  $(date +%r)"
echo "Project:   Rasberry Pi C++ Kernel"
echo "Author:    SharpCoder"
echo ""
echo ""
echo "Compiling the kernel..."

for var in "$@"
do
	case "$var" in
	--debug-only)
		compile_mode=1
		include_output=1
	;;
	--include-output)
		include_output=1
	;;
	--clean)
		compile_clean=1
	;;
	esac
done

# Assemble the metadata file.

echo "Generating Meta Data..."
if [ ! $compile_mode -eq 1 ];
then
	./make-meta.sh
fi

# Remove the old kernel stuff.
rm -r $boot/kernel.img -f

# Compile!
$compiler-as $code/irq.S -o irq.o
$compiler-as $code/bootstrap.S -o bootstrap.o
$compiler-g++ $gppflags -c $code/kmain.cpp -o kmain.o

echo "Linking..."

# Link!
$compiler-g++ $ldlags -T $code/linker.ld bootstrap.o irq.o kmain.o -o kernel.elf

# Generate the IMG file.
$compiler-objcopy kernel.elf -O binary $boot/kernel.img

# Clean Up
if [ $include_output -eq 1 ];
then
	echo "Generating debug files..."
	$compiler-objdump -D bootstrap.o > $debug/bootstrap.o.asm
	$compiler-objcopy bootstrap.o -O srec $debug/bootstrap.srec
	hexdump -C kernel.elf > $debug/kernel.hex
	$compiler-objdump -D irq.o > $debug/irq.o.asm
	$compiler-objdump -D kmain.o > $debug/kmain.o.asm
	$compiler-objdump -D kernel.elf > $debug/kern.elf.asm
fi

echo "Cleaning up..."
rm ./*.elf
rm ./*.o

# Check for success.
if [ ! -e "$boot/kernel.img" ]
then
	echo " . . . "
	echo "BUILD FAILED!";
	return 1
fi

if [ $compile_mode -eq 1 ];
then
	echo "Build completed!"
	return 0
fi

# Footer
echo "Successful!"
echo "Generating IMG file..."

# Call the image builder.
./rpi-build.sh
