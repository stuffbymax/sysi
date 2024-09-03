# Dependencies for sysi on arch

The `sysi` script has several dependencies on an Arch Linux system. Below is a list of required packages and utilities:

## Core Dependencies

1. **`bash`**: The shell interpreter used to execute the script.
2. **`awk`**: For processing and extracting data from text.
3. **`free`**: To display memory and swap usage statistics.
4. **`grep`**: For searching and filtering text.
5. **`tput`**: To get terminal capabilities, such as column width.
6. **`sed`**: For text transformation and extraction.
7. **`uptime`**: To display how long the system has been running.
8. **`date`**: To display the current date and time.
9. **`ps`**: For displaying information about active processes.
10. **`iostat`**: To report CPU and I/O statistics.
11. **`df`**: For displaying disk space usage.
12. **`upower`**: To get battery status information.
13. **`xrandr`**: To get display resolution information.
14. **`sensors`**: For monitoring temperature and fan speeds.

## Optional Dependencies

4. **`nvidia-smi`**: For Nvidia GPU temperature (if Nvidia GPU is present).
5. **`radeontop`**: For AMD GPU temperature (if AMD GPU is present).
6. **`intel_gpu_top`**: For Intel GPU temperature (if Intel GPU is present).



# Dependencies for sysi on debian

This document lists the dependencies required for the Bash script that provides system information along with additional features such as quotes, jokes, and fun facts.

## Dependencies

### Required Commands

1. **`free`**: Used to display memory and swap usage.
2. **`awk`**: Used for pattern scanning and processing.
3. **`tput`**: Used to determine terminal capabilities.
4. **`uptime`**: Used to display the system uptime.
5. **`date`**: Used to display the current date and time.
6. **`xrandr`**: Used to display screen resolution information.
7. **`lspci`**: Used to display information about PCI devices, including GPU.
8. **`sensors`**: Used to display temperature and fan speed information (requires `lm_sensors` package).
9. **`ps`**: Used to display processes and their CPU/memory usage.
10. **`iostat`**: Used to display disk I/O statistics (requires `sysstat` package).
11. **`df`**: Used to display disk space usage.
12. **`upower`**: Used to display battery information (requires `upower` package).
13. **`ip`**: Used to display network interfaces (if the network interface display section is uncommented).
14. **`gtk-theme`**: Used for retrieving GTK theme information.
15. **`gsettings`**: Used for retrieving GNOME theme settings.
16. **`grep`**: Used for pattern matching in text files.
17. **`sed`**: Used for stream editing and text processing.
18. **`curl`** (optional for network-related functionalities): Used for making HTTP requests.

### Optional Commands

- **`nvidia-smi`**: Used for Nvidia GPU temperature (if Nvidia GPU section is uncommented).
- **`radeontop`**: Used for AMD GPU temperature (if AMD GPU section is uncommented).
- **`intel_gpu_top`**: Used for Intel GPU temperature (if Intel GPU section is uncommented).

### Package Installation

To install the required packages, you can use the following commands depending on your distribution:

#### Debian/Ubuntu

```sh
sudo apt update
sudo apt install -y lm-sensors sysstat upower fonts-dejavu
```

### Notes:

- **Core Dependencies** are essential for the script's functionality.
- **Optional Dependencies** are needed for specific features or functionalities but are not critical for the basic operation of the script.
- Use `pacman` to install packages on Arch Linux. The `-S` flag is used to sync and install packages from the repository.
