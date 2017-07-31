#!/bin/bash

# Clean up previous builds
rm -f build/Hologram.zip
rm -Rf build/Hologram
mkdir -p build/Hologram

# Copy over the project structure
cp -R extras/templates/Project build/Hologram/Project

# Copy over the hologram build files
mkdir -p build/Hologram/Project/hologram
cp dist/hologram.js build/Hologram/Project/hologram/hologram.js
cp dist/hologram.js.map build/Hologram/Project/hologram/hologram.js.map

# Clean up and zip the result
find build/Hologram -name ".DS_Store" -depth -exec rm {} \;
cd build
zip -r -y Hologram.zip Hologram
