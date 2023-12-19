#!/bin/bash

# Prompt the user for input
read -p "Enter the VM name: " vm_name

# Check if the VM name is provided
if [ -z "$vm_name" ]; then
    echo "Error: VM name cannot be empty."
    exit 1
fi

# Run the command with the provided VM name
prlctl set "$vm_name" --device-set net0 --type bridged

# Check the exit status of the previous command
if [ $? -eq 0 ]; then
    echo "Command executed successfully."
else
    echo "Error: Failed to execute the command."
fi
