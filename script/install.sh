#!/bin/sh

set -e  # Exit on error

# Define the download URL
URL="https://github.com/flowscripter/example-host-application/releases/latest/download/example-host-application_Linux_x86_64.zip"

# Create a temporary directory
TMP_DIR=$(mktemp -d)
cd "$TMP_DIR"

# Download and extract
echo "Downloading example-host-application..."
curl -fsSL "$URL" -o executable.zip
unzip executable.zip

# Install
chmod +x example-host-application
sudo mv example-host-application /usr/local/bin/

# Clean up
cd -
rm -rf "$TMP_DIR"

echo "✅ Installation complete! Run 'example-host-application' to get started."
