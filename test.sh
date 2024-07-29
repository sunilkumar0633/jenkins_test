#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Print each command before executing it (useful for debugging)
set -x

# Define variables
DI_NAME="test_directory"
FI_NAME="test_filex.txt"
FILE_CONTENT="Hello, Jenkins!"

# Create a new directory
echo "Creating directory: $DIR_NAME"
mkdir -p $DIR_NAME

# Change to the new directory
cd $DIR_NAME

# Create a new file and write content to it
echo "Creating file: $FILE_NAME"
echo $FILE_CONTENT > $FILE_NAME

# Display the content of the file
echo "Displaying the content of the file:"
cat $FILE_NAME

# Clean up: Remove the directory and its contents
cd ..
rm -rf $DIR_NAME
echo "Success" >/result.txt

echo "Test script executed successfully!"
