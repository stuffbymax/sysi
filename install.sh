#!/bin/bash

# This script installs the sysi (system information) software to the user's home directory using a local fetch script

# Define variables
SOFTWARE_NAME="sysi" 
FETCH_SCRIPT="./sysi"  # Path to the local  script
TEMP_DIR=$(mktemp -d)

# Function to display messages
display_message() {
    echo "$1"
}



# Function to move  script to /usr/local/bin and set executable permissions
setup_fetch_script() {
    display_message "Setting up sysi script..."
    chmod +x sysi
    sudo mv sysi /usr/local/bin/sysi
    display_message "Setting executable permissions..."
    sudo chmod +x /usr/local/bin/sysi
    display_message "Fetch script setup complete."
}

# Main function
main() {
    setup_fetch_script
    
}

# Run the script
main
