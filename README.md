# Linux Data Recovery Tool – Bash Script :

# ⚠️ Disclaimer :
## Use this script responsibly. Always double-check disk paths before running recovery tools. This tool is meant for educational and recovery purposes as a practise-project only. 
Running data recovery tools can further damage a drive if not used correctly.


## A simple and beginner-friendly Bash script that wraps around powerful Linux data recovery tools like ddrescue, photorec, and extundelete to make the recovery process easier and more accessible.

What This Tool Does 🔧:

This script helps you:

* Create a backup image of a failing or corrupted disk.

* Recover deleted or lost files from that disk image.

* Store all recovered files in a separate output folder.

* Perfect for anyone who needs a quick and automated way to recover data from damaged or formatted disks.

# Getting Started 🚀 :
## Step 1: Install Required Tools 📦:

  Open your terminal and run: 

  ```bash
sudo apt update
sudo apt install testdisk extundelete gddrescue
```

## 📜 Step 2: Create the Bash Script :
Create a new file called recover.sh and paste the following code into it :

```bash
#!/bin/bash

echo "🔧 Linux Data Recovery Tool"
echo "Enter the disk (e.g., /dev/sda1): "
read DISK

mkdir -p recovery_output

echo "Step 1: Creating disk image..."
sudo ddrescue $DISK recovery_output/recovery.img recovery_output/recovery.log

echo "Step 2: Running photorec on the image..."
sudo photorec /log /d recovery_output/files /cmd recovery_output/recovery.img options

echo "✅ Done! Recovered files are in the 'recovery_output' folder."

```

## 🔐 Step 3: Make It Executable :
Give the script permission to run :

```bash
chmod +x recover.sh
```

## ▶️ Step 4: Run the Script :

```bash
./recover.sh
```

# 📁 Output
## All recovered files will be stored in the recovery_output/files directory, and a disk image will be saved as recovery.img for future use or deeper analysis.


