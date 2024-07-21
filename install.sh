#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Function to install packages based on distribution
install_packages() {
    local distribution=$1
    shift
    local packages=("$@")

    case $distribution in
        debian|ubuntu)
            sudo apt update
            sudo apt install -y "${packages[@]}"
            ;;
        fedora)
            sudo dnf install -y "${packages[@]}"
            ;;
        arch|endeavouros|manjaro)
            yay -S --noconfirm "${packages[@]}"
            ;;
        opensuse)
            sudo zypper install -y "${packages[@]}"
            ;;
        *)
            echo "Unsupported distribution: $distribution"
            exit 1
            ;;
    esac
}

# Determine the Linux distribution
get_distribution() {
    if command_exists lsb_release; then
        lsb_release -si | tr '[:upper:]' '[:lower:]'
    elif [ -e /etc/os-release ]; then
        source /etc/os-release
        echo "$ID" | tr '[:upper:]' '[:lower:]'
    else
        echo "unknown"
    fi
}

# Function to install Iosevka Nerd Font based on distribution
install_nerdfont() {
    local distribution=$1
    case $distribution in
        debian|ubuntu)
            sudo apt install -y fonts-iosevka
            ;;
        fedora)
            sudo dnf install -y iosevka-fonts
            ;;
        arch|endeavouros|manjaro)
            sudo pacman -S --noconfirm ttf-iosevka-nerd
            ;;
        opensuse)
            sudo zypper install -y fonts-iosevka-nerd
            ;;
        *)
            echo "Unsupported distribution: $distribution"
            exit 1
            ;;
    esac
}

# Check dependencies
dependencies=("lm_sensors" "ttf-iosevka-nerd" "sysstat")

# Find missing dependencies
missing_deps=()
for dep in "${dependencies[@]}"; do
    if ! command_exists "$dep"; then
        missing_deps+=("$dep")
    fi
done

# Install missing dependencies
if [[ ${#missing_deps[@]} -gt 0 ]]; then
    echo "Installing missing dependencies: ${missing_deps[*]}"
    distribution=$(get_distribution)

    case $distribution in
        debian|ubuntu|arch|endeavouros|manjaro|fedora|opensuse)
            install_packages "$distribution" "${missing_deps[@]}"
            ;;
        *)
            echo "Unsupported distribution: $distribution"
            exit 1
            ;;
    esac
fi

# Check for and install Iosevka Nerd Font
echo "Checking for Iosevka Nerd Font..."
if ! fc-list : file family | grep -q "Iosevka"; then
    distribution=$(get_distribution)
    install_nerdfont "$distribution"
else
    echo "Iosevka Nerd Font is already installed."
fi

# Install SYSI script
echo "Installing SYSI script..."
sudo cp sysi /usr/local/bin/sysi
sudo chmod +x /usr/local/bin/sysi

echo "SYSI installation completed."
echo "You can now run 'sysi' to display system information."
