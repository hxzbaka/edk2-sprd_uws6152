#!/bin/bash
# based on the instructions from edk2-platform

if [ $# -eq 0 ]; then
    echo "Error: No device specified!"
    echo "Usage: $0 <device_name>"
    echo "Example: $0 cd20max"
    exit 1
fi

DEVICE=$1
DSC_FILE="UWS6152Pkg/Devices/${DEVICE}.dsc"

if [ ! -f "$DSC_FILE" ]; then
    echo "Error: Device DSC file not found: $DSC_FILE"
    echo "Available devices:"
    ls UWS6152Pkg/Devices/*.dsc 2>/dev/null | sed 's|UWS6152Pkg/Devices/||' | sed 's|\.dsc||' || echo "No devices found in UWS6152Pkg/Devices/"
    exit 1
fi

echo "Building for device: $DEVICE"
echo "Using DSC file: $DSC_FILE"

chmod -R 777 ./*

set -e
./build_common.sh

# not actually GCC5; it's GCC7 on Ubuntu 18.04.
./build_bootshim.sh

GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -j$(nproc) -s -n 0 -a AARCH64 -t GCC5 -p "$DSC_FILE"


cat BootShim/BootShim.bin "workspace/Build/UWS6152Pkg/DEBUG_GCC5/FV/UWS6152PKG_UEFI.fd" > "workspace/UEFI_${DEVICE}"

echo "Build completed!"
echo "Output: $PWD/workspace/UEFI_${DEVICE}"
echo ""
cd ..