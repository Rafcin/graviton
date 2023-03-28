#!/bin/bash

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
            echo "Running tests in $subdir"
            echo -e "\n\n"
            cd $subdir/tests
            ./output/main
            echo -e "\n\n"
            cd ../../
        fi
    fi
done
