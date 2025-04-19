#!/bin/bash
echo "Linux Recovery Tool"
echo "Enter the disk (e.g., /dev/sda1): "
read DISK

echo "Creating disk image with ddrescue..."
ddrescue $DISK recovery.img recovery.log

echo "Scanning image with photorec..."
photorec /log /d recovered_files /cmd recovery.img options

echo "Done. Check 'recovered_files' folder."