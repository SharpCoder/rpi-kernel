#!/bin/sh

# Options
compile_mode=0
compile_clean=0
include_output=0

# Compiler Toolchain
compiler=arm-none-eabi

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

# Compile!
$compiler-as $code/bootstrap.S -o bootstrap.o
$compiler-g++ -ffreestanding -nostdlib -c $code/kmain.cpp -o kmain.o

echo "Linking..."

# Link!
$compiler-ld -T $code/linker.ld bootstrap.o kmain.o -o kernel.elf

# Generate the IMG file.
$compiler-objcopy kernel.elf -O binary $boot/kernel.img


# Clean Up
if [ $include_output -eq 1 ];
then
	echo "Generating debug files..."
	$compiler-objdump -D bootstrap.o > $debug/bootstrap.o.asm
	$compiler-objdump -D kmain.o > $debug/kmain.o.asm
	$compiler-objdump -D kernel.elf > $debug/kern.elf.asm
fi

echo "Cleaning up..."
rm ./*.elf
rm ./*.o

if [ $compile_mode -eq 1 ];
then
	echo "Build completed!"
	return
fi

# Footer
echo "Successful!"
echo "Generating IMG file..."

# Call the image builder.
./rpi-build.sh
