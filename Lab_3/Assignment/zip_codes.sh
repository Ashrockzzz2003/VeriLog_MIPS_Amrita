#!/bin/bash

# navigate to the current directory
cd "$(dirname "$(readlink -f "$0")")"

dir=$(pwd)

# create a temporary directory to store the files to zip
temp_dir=$(mktemp -d)

# copy the .v files from subdir1 and subdir2 to the temp directory
find NAND NOR -type f -name "*.v" -exec cp --parents {} "$temp_dir" \;

# zip the .v files in the temp directory
cd "$temp_dir"
zip -r CB.EN.U4CSE21008_Lab_3.zip .

mv CB.EN.U4CSE21008_Lab_3.zip $dir

# remove the temp directory
cd ..
rm -rf "$temp_dir"