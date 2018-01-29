#!/bin/bash

usage() {
    echo "Usage: $0 working_directory"
    echo "If working directory is not set, a optional DEFAULT_VAGRANT_DIRECTORY is checked"
    exit 1
}

# Check for parameters
if [ ! -d "$1" ]; then
    if [ ! -d "$DEFAULT_VAGRANT_DIRECTORY" ]; then
        usage
    else
        WORKING_DIR=$DEFAULT_VAGRANT_DIRECTORY
    fi
else
    WORKING_DIR=$1
fi

# Change to working directory
cd "$WORKING_DIR"

# Halt Vagrant
vagrant halt
