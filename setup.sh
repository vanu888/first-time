#!/bin/bash

echo "Starting installation of essential tools on Linux"

# Update system
sudo apt update && sudo apt upgrade -y

# Install VLC
echo "Installing VLC..."
sudo apt install -y vlc

# Install essential build tools
echo "Installing build-essential and dev tools..."
sudo apt install -y build-essential curl file git

echo "Installing Python tools and ML libraries..."
sudo apt install -y python3 python3-pip python3-venv
pip3 install --upgrade pip
pip3 install numpy pandas matplotlib scikit-learn tensorflow torch jupyter ipython seaborn

echo "Installing virtualenv..."
pip3 install virtualenv

# Install GIMP
echo "🖌️ Installing GIMP..."
sudo apt install -y gimp

# Install Java (OpenJDK 17)
echo "☕ Installing Java (OpenJDK 17)..."
sudo apt install -y openjdk-17-jdk

# Install VS Code
echo "Installing Visual Studio Code..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install -y code
rm packages.microsoft.gpg

# Install ADB & Fastboot
echo "Installing ADB and Fastboot tools..."
sudo apt install -y android-tools-adb android-tools-fastboot

# Android USB Support 
echo "Installing ADB and MTP (Android USB data sharing)..."
sudo apt install -y android-tools-adb android-tools-fastboot mtp-tools jmtpfs gvfs-backends

# WINE 
echo "Installing Wine..."
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y wine wine64 wine32

# Install other helpful tools
echo "🛠️ Installing additional utilities..."
sudo apt install -y htop neofetch unzip wget 

echo "✅ All tools installed successfully!"

echo -e " \n
Additional tools you can use to set up your device:\n
    * Firmware Update : 'sudo apt install linux-firmware'\n
    * To check mousepoint installed : 'sudo apt install server-xorg-input-libinput' 
                            or 'sudo apt install xserver-xrog-input-synaptics'\n
    * Battery (power management) : 'sudo apt install tlp'\n
    * Power management : 'sudo systemctl enable tlp'\n
    * Enable tlp : 'sudo systemctl start tlp'\n
    * Check tlp status : 'sudo tlp-stat -s'\n
    * Tool for battery monitoring : 'sudo apt install acpi'\n
    * Check battery status : 'acpi -V'\n
    * Monitor temp and fan info : 'sudo apt install lm-sensors'\n
    * Indicator temp and RAM : 'sudo apt install indicator-multiload'\n
    * Touchpad and config : 'sudo apt install xinput'\n
    * Bluetooth GUI : 'sudo apt install blueman'\n
    * Core bluetooth stack : 'sudo apt install blucz'\n
    * Firmware update tool : 'sudo apt install fwupd'\n
    * Check firmware update running : 'fwupdmgr get-updates'\n
    * CPU frequency scaling : 'sudo apt install cpu-frequtils'\n
    * Tune power : 'sudo apt install powertop'\n
    * Manage and perform HD : 'sudo apt install hdparm'\n
    * Multimedia (GPU) : 'sudo apt install mesa-utils'\n
    * Non-free firmware : 'sudo apt install firmware-misc-nonfree'\n
    * System cleaner : 'sudo apt install bleachbit'\n
    * For Thinkpad users :\n 
        * Power management : 'sudo modprobe thinkpad_acpi'\n
        * Fan controll tool : 'sudo apt install thinkfan'
    "
