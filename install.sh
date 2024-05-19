#!/bin/bash

# This script installs the simple-fetch software to the user's home directory using a local fetch script

# Define variables
SOFTWARE_NAME="simple-fetch" 
FETCH_SCRIPT="./sfetch"  # Path to the local fetch script
TEMP_DIR=$(mktemp -d)

# Function to display messages
display_message() {
    echo "$1"
}



# Function to move fetch script to /usr/local/bin and set executable permissions
setup_fetch_script() {
    display_message "Setting up fetch script..."
    chmod +x sfetch
    sudo mv sfetch /usr/local/bin/sfetch
    display_message "Setting executable permissions..."
    sudo chmod +x /usr/local/bin/sfetch
    display_message "Fetch script setup complete."
}

# Main function
main() {
    setup_fetch_script
    
}

# Run the script
main
