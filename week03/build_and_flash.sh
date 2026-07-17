#!/bin/bash

set -e

echo "STEP 1: CLEANING BUILD DIRECTORY"
if [-d "build"]; then
    echo "Deleting existing build folder..."
    rm -rf build
fi
echo ""

echo "STEP 2: CONFIGURING PROJECT WITH CMAKE"
cmake -G Ninja -B build -S .
echo ""

echo "STEP 3: COMPILING FIRMWARE WITH NINJA"
ninja -C build
echo ""

echo "STEP 3: FLASHING FIRMWARE TO TARGET MCU"
STM32_Programmer_CLI -c port=SWD -w build/stm32f103_aht20_baremetal.bin 0x08000000 -rst
