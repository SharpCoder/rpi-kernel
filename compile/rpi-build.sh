#!/bin/sh

OUTPUT=rpi-image
OUTPUTDIR=../
OUTPUTSIZEmb=34
BOOTDIR=../boot

# Do some math based on the output size.
OUTPUTSIZEb=$(( $OUTPUTSIZEmb * 1024 * 1024 ))
OUTPUTCYLINDERS=$(( $OUTPUTSIZEb / 255 / 63 / 512 ))
OUTPUTBLOCKCOUNT=$(( $OUTPUTSIZEmb * 1024 * 1024 ))
OUTPUTBLOCKCOUNT=$(( $OUTPUTBLOCKCOUNT / 512 ))


dd bs=512 count=$OUTPUTBLOCKCOUNT if=/dev/zero of=$OUTPUTDIR$OUTPUT.img
fdisk -b 512 -H 255 -S 63 -C $OUTPUTCYLINDERS $OUTPUTDIR$OUTPUT.img << EOF
x
c
$OUTPUTCYLINDERS
r
n
p
1
1
2
t
c

w
EOF

# Setup permissions
chown joshcole $OUTPUTDIR$OUTPUT.img
chown joshcole $BOOTDIR/*

echo "Mounting IMG..."
losetup -o $((63*512)) /dev/loop1 $OUTPUTDIR$OUTPUT.img
mkfs.msdos -F 32 /dev/loop1
losetup -d /dev/loop1
mount -o loop,offset=$((63*512)) $OUTPUTDIR$OUTPUT.img /media/sdcard
echo "Copying Files..."
cp $BOOTDIR/* /media/sdcard
umount /media/sdcard

# Copy to the D drive.
cp $OUTPUTDIR$OUTPUT.img /media/sf_D_DRIVE/0pi-kernel/$OUTPUT.img

echo ""
echo "Finished BUILDING IMAGE"
