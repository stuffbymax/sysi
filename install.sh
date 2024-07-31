#!/bin/bash

echo "The install script is made by AI so expect it to not work 100%"
sleep 2

# Function to check if a command exists
command_exists() {
    command -v "$1" &> /dev/null
}

# Function to install packages based on environment (Termux or Linux distribution)
install_packages() {
    local environment=$1
    shift
    local packages=("$@")

    case $environment in
        termux)
            pkg update
            pkg install -y "${packages[@]}"
            ;;
        debian|ubuntu)
            sudo apt update
            sudo apt install -y "${packages[@]}"
            ;;
        fedora)
            sudo dnf install -y "${packages[@]}"
            ;;
        arch|endeavouros|manjaro)
            sudo pacman -Syu --noconfirm "${packages[@]}"
            ;;
            opensuse)
            sudo zypper install -y "${packages[@]}"
            ;;
        *)
            echo "Unsupported environment or distribution: $environment"
            exit 1
            ;;
    esac
}

# Determine if running in Termux or a Linux distribution
get_environment() {
    if [ -n "$TERMUX_VERSION" ]; then
        echo "termux"
    elif command_exists lsb_release; then
        lsb_release -si | tr '[:upper:]' '[:lower:]'
    elif [ -e /etc/os-release ]; then
        source /etc/os-release
        echo "$ID" | tr '[:upper:]' '[:lower:]'
    else
        echo "unknown"
    fi
}

# Function to install Iosevka Nerd Font in Termux
install_nerdfont_termux() {
    echo "Downloading and installing Iosevka Nerd Font..."
    mkdir -p ~/.local/share/fonts
    curl -fLo ~/.local/share/fonts/IosevkaNerdFont.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
    unzip ~/.local/share/fonts/IosevkaNerdFont.zip -d ~/.local/share/fonts/
    rm ~/.local/share/fonts/IosevkaNerdFont.zip
    termux-reload-settings
}

# Function to install Iosevka Nerd Font based on environment
install_nerdfont() {
    local environment=$1
    case $environment in
        termux)
            install_nerdfont_termux
            ;;
        debian|ubuntu)
            sudo apt install -y fonts-iosevka
            ;;
        fedora)
            sudo dnf install -y iosevka-fonts
            ;;
        arch|endeavouros|manjaro)
            sudo pacman -S --noconfirm ttf-iosevka-nerd
            ;;
        *)
            echo "Unsupported environment or distribution: $environment"
            exit 1
            ;;
    esac
}

# Check if curl and sudo are installed
for cmd in curl sudo; do
    if ! command_exists "$cmd"; then
        echo "Error: $cmd is not installed."
        exit 1
    fi
done

# Check dependencies
dependencies=("lm_sensors" "sysstat")

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
    environment=$(get_environment)

    case $environment in
        termux|debian|ubuntu|arch|endeavouros|manjaro|fedora)
            install_packages "$environment" "${missing_deps[@]}"
            ;;
        *)
            echo "Unsupported environment or distribution: $environment"
            exit 1
            ;;
    esac
fi

# Check for and install Iosevka Nerd Font
echo "Checking for Iosevka Nerd Font..."
if ! fc-list : file family | grep -qi "Iosevka"; then
    environment=$(get_environment)
    install_nerdfont "$environment"
else
    echo "Iosevka Nerd Font is already installed."
fi

# Install SYSI script
echo "Installing SYSI script..."
mkdir -p ~/bin
cp sysi ~/bin/sysi
chmod +x ~/bin/sysi

echo "SYSI installation completed."
echo "You can now run 'sysi' to display system information."
