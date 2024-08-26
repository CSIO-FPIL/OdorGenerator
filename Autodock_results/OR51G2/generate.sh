#!/bin/bash

# Set the source directory
SOURCE_DIR="/home/nikki-user/Documents/Docking_results/OR51G2"

# Create the top_hits directory if it doesn't exist
mkdir -p "$SOURCE_DIR/top_hits"

# Loop through all pdbqt files in the source directory
for pdbqt_file in "$SOURCE_DIR"/*.pdbqt; do
    # Check if file exists (this prevents errors if no .pdbqt files are found)
    [ -e "$pdbqt_file" ] || continue
    
    # Extract the base name of the file (without path and extension)
    base_name=$(basename "$pdbqt_file" .pdbqt)
    
    # Convert the file using OpenBabel, saving only the first model
    obabel -ipdbqt "$pdbqt_file" -opdb -O "$SOURCE_DIR/top_hits/${base_name}_model1.pdb" -m1
    
    echo "Converted $pdbqt_file to ${base_name}_model1.pdb"
done

echo "Conversion complete. Check the 'top_hits' folder for results."