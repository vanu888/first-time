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
