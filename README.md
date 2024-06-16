# System Information Script (`sysinfo.sh`)

## Overview
This Bash script (`sysinfo.sh`) displays detailed system information, including OS details, hardware specifications, CPU/GPU temperatures, memory usage, disk space, and more. It utilizes various Linux commands and utilities to gather and present this information in a structured format.

## Features
- **Operating System Information:**
  - Displays OS name, hostname, kernel version, architecture, etc.
- **Hardware Details:**
  - CPU model, cores, threads, and temperature (if `lm_sensors` is installed).
  - GPU temperatures for Nvidia, AMD, and Intel GPUs (if respective tools are installed).
  - Memory (RAM) and Swap usage.
  - Disk usage details.
- **System Metrics:**
  - Uptime, package count (based on the package manager).
  - Shell type, screen resolution, machine hardware platform.
- **Additional Information:**
  - GTK theme, icon theme, cursor theme (for GNOME desktop).
  - Battery status (if available), mounted drives, current system time.

## Advantages
- **Comprehensive Information:** Provides a wide range of system details useful for troubleshooting, monitoring, or general system overview.
- **Customizable:** Easily extendable to add or remove specific functionalities based on user needs.
- **Simple Execution:** Runs with basic permissions and requires standard Linux utilities, making it accessible on most Linux distributions.
- **Formatted Output:** Uses ASCII art for logo and colored output for better readability.

## Disadvantages
- **Dependency on Tools:** Requires certain utilities (`sensors`, `nvidia-smi`, `radeontop`, `intel_gpu_top`) to be installed for GPU temperature monitoring.
- **Limited Compatibility:** Primarily designed for Linux systems and may require adjustments for other Unix-like operating systems.
- **Manual Updates:** Some functionalities (like network interfaces, top processes, etc.) are commented out and need manual enabling.
- **Security Considerations:** Running certain commands (`sensors`, `nvidia-smi`, etc.) may require elevated privileges or specific user permissions.

## Future Enhancements
- Enable additional functionalities such as network interface details, top processes by CPU/memory usage, system logs, disk I/O statistics, and system load metrics.
- Implement error handling for missing dependencies or unavailable system commands.
- Support for other Unix-like systems or different Linux distributions.

## Usage
To execute the script:
```bash
sysi
