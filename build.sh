#!/usr/bin/env bash
# exit on error
set -o errexit

# Install python dependencies
pip install -r requirements.txt

# Create a bin directory for ffmpeg
mkdir -p bin

# Download and extract ffmpeg static build
echo "Downloading ffmpeg static build..."
curl -L https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz -o ffmpeg.tar.xz
tar -xf ffmpeg.tar.xz --strip-components=1 -C bin
rm ffmpeg.tar.xz

echo "ffmpeg successfully installed to bin/ directory."
