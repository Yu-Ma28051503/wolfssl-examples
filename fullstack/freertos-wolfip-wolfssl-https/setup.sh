#!/bin/bash

# Script to setup FreeRTOS environment for wolfSSL examples
set -e

FREERTOS_REPO="https://github.com/FreeRTOS/FreeRTOS.git"
FREERTOS_KERNEL_REPO="https://github.com/FreeRTOS/FreeRTOS-Kernel.git"
FREERTOS_POSIX_REPO="https://github.com/FreeRTOS/FreeRTOS-Plus-POSIX.git"

echo "Setting up FreeRTOS simulation environment..."

# Create directories if they don't exist
mkdir -p freertos
cd freertos

# Clone FreeRTOS repositories if they don't exist
if [ ! -d "FreeRTOS" ]; then
    git clone $FREERTOS_REPO
fi

if [ ! -d "FreeRTOS-Kernel" ]; then
    git clone $FREERTOS_KERNEL_REPO
fi

if [ ! -d "FreeRTOS-Plus-POSIX" ]; then
    git clone $FREERTOS_POSIX_REPO
fi

echo "FreeRTOS repositories cloned successfully"

# Create basic directory structure for our project
mkdir -p ../src
mkdir -p ../include
mkdir -p ../build

echo "Directory structure created"
echo "Setup complete!"
