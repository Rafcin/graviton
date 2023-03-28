#!/bin/bash

# Check if figlet is installed
if ! command -v figlet &> /dev/null; then
    echo "figlet not found, installing..."
    sudo apt install figlet
fi

# Check if toilet is installed
if ! command -v toilet &> /dev/null; then
    echo "toilet not found, installing..."
    sudo apt install toilet
fi

# Find all subdirectories
subdirs=$(find . -type d)

# Loop through the subdirectories
for subdir in $subdirs; do
    # Check if the subdirectory has a makefile
    if [ -f "$subdir/makefile" ]; then
        # Run make in the subdirectory
        echo "Running make in $subdir..."
        make -s -C $subdir

        # Check if there is a tests directory in the subdirectory
        if [ -d "$subdir/tests" ]; then
            # Run the tests in the tests directory
            echo "[---------------------]"
            name=${subdir#"./"}
            echo "Running tests in $subdir"
            figlet -f small $name
            echo -e "\n\n"
            cd $subdir/tests
            ./output/main
            echo -e "\n\n"
            echo "[---------------------]"
            cd ../../
        fi
    fi
done
