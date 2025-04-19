#!/bin/bash

echo "Linux Data Recovery Tool"
echo "Enter the disk (e.g., /dev/sda1): "
read DISK

mkdir -p recovery_output

echo "Step 1: Creating disk image..."
sudo ddrescue $DISK recovery_output/recovery.img recovery_output/recovery.log

echo "Step 2: Running photorec on the image..."
sudo photorec /log /d recovery_output/files /cmd recovery_output/recovery.img options

echo "Done! Recovered files are in the 'recovery_output' folder."