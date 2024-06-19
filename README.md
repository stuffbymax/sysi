

[this section is made by BluishHumility

# sysi Script

README written by AI
----
]

# what i use AI for
* readme
* last option to ask
* "debugin"

# why i use AI
 * Because it can identify and predict potential issues, recommend solutions, and even execute debugging tasks, reducing the burden on developers and expediting the development lifecycle.

## Description
The `sysi` is designed to provide comprehensive system information on Linux-based operating systems. It is meant to be a versatile tool that collects and displays essential details about the system's hardware, software, and usage statistics.
--
## Requirements

To run `sysi` without issues, ensure the following:

1. **Operating System**:
   - Linux-based operating system (e.g., Ubuntu, Fedora, Debian, Arch).
1.5  **fonts**
     - nerd font needed
     - get nerd font https://www.nerdfonts.com/
     - if you using arch `sudo pacaman -S nerd-fonts`
     - 
       (Repository extra)
       
2. **Dependencies**:
   - Basic Linux utilities (`awk`, `grep`, `sed`, `cut`, `awk`).
   - Additional utilities for CPU and GPU monitoring:
     - `lm-sensors` for CPU temperature and gpu temperature.
       ### only if you endable in a script
     - `nvidia-smi` for Nvidia GPU temperature.
     - `radeontop` for AMD GPU temperature.
     - `intel-gpu-tools` for Intel GPU temperature.

3. **Root or Sudo Access**:
   - Some commands (especially those fetching GPU temperatures) may require root or sudo privileges.

## Installation of Dependencies

Install necessary utilities using your package manager. Examples:

# Install lm-sensors for CPU temperature
``sudo apt-get install lm-sensors``

# Install nvidia-smi for Nvidia GPU temperature
``sudo apt-get install nvidia-smi``

# Install radeontop for AMD GPU temperature
``sudo apt-get install radeontop``

# Install intel-gpu-tools for Intel GPU temperature
``sudo apt-get install intel-gpu-tools``

## Features
- **Operating System Information**: Displays OS name, kernel version, architecture, and more.
- **Hardware Information**: Provides details about the host, CPU model, cores, threads, and architecture.
- **Temperature Monitoring**: Retrieves and displays CPU and GPU temperatures using available system utilities.
- **Memory and Storage**: Shows memory (RAM) and swap usage, as well as disk usage statistics.
- **disk I/O statistics:** indicators of how well your storage devices are performing and handling data transfers
- **System Uptime**: Indicates how long the system has been running.
- **Package Management**: Counts installed packages using package managers.
- **User Interface Themes**: Fetches information about GTK theme, icon theme, and cursor theme.
- **Additional Information** (commented out): Includes options for displaying network interfaces, top CPU and memory-consuming processes, system logs,  and system load.

## Advantages
- **Comprehensive**: Provides a wide range of system information in a structured format.
- **Customizable**: Additional functionalities can be enabled by uncommenting specific sections of the script.
- **Utility Compatibility**: Supports multiple utilities for temperature monitoring across different hardware configurations.
- **Easy to Run**: Simply execute the script in a terminal to obtain detailed system insights.

## Disadvantages and Considerations
- **Dependency on Utilities**: Requires certain utilities to be installed and correctly configured for accurate readings.
- **Privileges**: Some commands may require root or sudo privileges for full functionality.
- **Hardware Specific**: Accuracy of temperature readings depends on hardware compatibility and monitoring utilities.
- **Linux Specific**: Designed for Linux systems; may not work on other operating systems without modifications.

## Prerequisites
- **Linux Environment**: Intended for use on Linux-based operating systems.
- **Installed Utilities**: Ensure necessary commands (`sensors`, `nvidia-smi`, `intel_gpu_top`, etc.) are available.
- **User Privileges**: Run the script with appropriate permissions to access system information.

## Usage
1. Download or create the `sisy` script (if it doesn't exist).
2. Open a terminal and navigate to the script's directory.
3. Run the script using `./sisy`.
4. Review the output to obtain detailed system information.

## Additional Notes
- Customize the script as needed by modifying or adding functionalities.
- Ensure to update system utilities and permissions as necessary for accurate and secure operation.
---

# Comparison: Neofetch vs sysi Bash Script

## Comparison of Features

| Feature                     | Neofetch                   | sysi                           |
|-----------------------------|----------------------------|--------------------------------|
| **ASCII Art**               | Yes, customizable          | Yes, specific to script        |
| **OS Detection**            | Yes                        | Yes                            |
| **Kernel Info**             | Yes                        | Yes                            |
| **Uptime**                  | Yes                        | Yes                            |
| **Packages Count**          | Yes                        | Yes                            |
| **Shell Info**              | Yes                        | Yes                            |
| **Resolution**              | Yes                        | Yes                            |
| **CPU Info**                | Yes                        | Yes                            |
| **CPU Cores/Threads**       | No                         | Yes                            |
| **Fan Speeds**              | No                         | Yes (if lm_sensors installed)  |
| **GPU Info**                | Yes                        | Yes                            |
| **GPU Temperatures**        | No                         | Yes (Nvidia, AMD, Intel GPUs)  |
| **Memory Info**             | Yes                        | Yes                            |
| **Disk Usage**              | Yes                        | Yes                            |
| **Battery Info**            | Yes                        | Yes                            |
| **Theme Info**              | Limited                    | Yes                            |
|**disk I/O statistics:**     | no                         | yes
| **Customization**           | High (config file)         | High (script editing)          |
| **Ease of Use**             | High (simple command)      | Moderate (run script manually) |

## Neofetch

Neofetch is a popular command-line tool that displays system information in a visually appealing ASCII art format.

### Pros:
- **Ease of Use:** Simple command (`neofetch`) to display basic system information.
- **Visual Appeal:** Provides information in a visually pleasing ASCII art format.
- **Cross-Distribution Support:** Works across different Linux distributions and BSD systems.

### Cons:
- **Limited Customization:** Offers limited customization options compared to a custom script.
- **Dependency on External Tools:** Relies on external commands and tools for certain information.

---

## sysi Bash Script

The `sysi` script is a custom bash script provided to display detailed system information including CPU/GPU details, memory usage, fan speeds (if available), and more.

### Pros:
- **Customizable Output:** Can be tailored to display specific system information and formatted as desired.
- **Comprehensive Information:** Provides extensive details such as CPU temperature, GPU information, memory and disk usage.
- **Flexibility:** Script can be expanded and modified based on user needs.

### Cons:
- **Complexity:** Requires knowledge of shell scripting to understand and modify.
- **System-Specific Adjustments:** May need adjustments to work across different Linux distributions or Unix-like systems.

---

## Conclusion

- **Neofetch:** Ideal for quick, basic system information display with minimal setup.
- **sysi Bash Script:** Suitable for users needing detailed and customizable system information and are comfortable with shell scripting.
---
# questions

## why no ascii distribution logo?
- i delete the ascii logos because there are over 600 active Linux distros and making ascii logo for them when only one person is making it is not possible same with unix like OS so thats why i choosed to have one. also it is make stand out to others 

## why i chenged the name?
i chenged the name because many reasons. there are a lot of scipts name somthing fetch also that afetch was arleady taken but syfi sound funny and it make it stand out also is "not neofetch clone" or based on neofetch so calling it afetch didint make sence for me.
