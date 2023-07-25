#!/bin/bash

# Prompt the user for a directory path
read -p "Enter the directory path: " dir_path

# Check if the directory exists and create it if not
if [ ! -d "$dir_path" ]; then
  mkdir -p "$dir_path"
  echo "Directory created: $dir_path"
fi

# Prompt the user for a file name and its content
read -p "Enter the file name: " file_name
read -p "Enter the file content: " file_content

# Create the file with the provided content
file_path="$dir_path/$file_name"
echo "$file_content" > "$file_path"

# Check if the file was created successfully and display a message
if [ -f "$file_path" ]; then
  echo "File created: $file_path"
else
  echo "Failed to create the file."
fi

