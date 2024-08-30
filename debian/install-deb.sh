#!/bin/bash

# List of packages to check
PACKAGES=(
lm-sensors
sysstat
upower
fonts-dejavu
)

# Function to check and install packages
install_packages() {
    for PACKAGE in "${PACKAGES[@]}"; do
        if dpkg -l | grep -q "^ii  $PACKAGE "; then
            echo "$PACKAGE is already installed."
        else
            echo "$PACKAGE is not installed. Installing..."
            sudo apt-get install -y "$PACKAGE"
        fi
    done
}

# Update package list and install packages
echo "Updating package list..."
sudo apt-get update
install_packages

echo "Package check and installation complete."
