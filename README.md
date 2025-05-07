# First-Time Setup Script

This script automates the installation of essential tools on Linux for new users. It is designed to set up a development environment with commonly used tools and utilities.

## Features

The script will install the following:

- **System Update**: Updates your Linux system to the latest available packages.
- **VLC**: A popular media player for handling various media formats.
- **Essential Build Tools**: Installs tools like `build-essential`, `git`, and `make` for development.
- **GIMP**: A powerful open-source image editing tool.
- **Java (OpenJDK 17)**: Installs the latest LTS version of OpenJDK for Java development.
- **VS Code**: A lightweight and powerful code editor from Microsoft.
- **ADB & Fastboot**: Android Debug Bridge and Fastboot tools for managing Android devices.
- **Android USB Support**: Configures your system for debugging Android devices via USB.
- **WINE**: A compatibility layer for running Windows applications on Linux.
- **Helpful Tools**: Installs useful utilities such as `curl`, `htop`, and `vim`.

## Usage

### Prerequisites
- A Linux machine running a Debian-based distribution (Ubuntu, etc.).
- A terminal with `sudo` privileges.

### Installation Steps

1. **Download the Script**  
   Clone or download the `setup.sh` script to your machine.

   ```bash
   git clone https://github.com/vanu888/first-time.git
   cd first-time
    ```

2. **Make the Script Executable**

   Run the following command to make the script executable:

   ```bash
   chmod +x setup.sh
   ```

3. **Run the Script with Superuser Privileges**

   Execute the script to install all the tools. You will need `sudo` privileges.

   ```bash
   sudo ./setup.sh
   ```

4. **Follow the Prompts**

   The script will automatically update your system, install the tools, and configure Android USB support.


### License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

### Support

For any questions or suggestions, feel free to [open an issue](https://github.com/vanu888/first-time/issues) on Github.



