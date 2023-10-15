#!/bin/sh

# pnpm is up to 2x faster than npm
# Files inside node_modules are cloned or hard linked from a single content-addressable storage
# pnpm has built-in support for multiple packages in a single repository
# pnpm creates a non-flat node_modules by default, so code has no access to arbitrary packages

PNPM_VERSION="v8.9.0"

echo "Start Downloading pnpm"
mkdir -p /opt/pnpm/$PNPM_VERSION
wget "https://github.com/pnpm/pnpm/releases/download/$PNPM_VERSION/pnpm-linux-x64" -o "/opt/pnpm/$PNPM_VERSION/pnpm-linux-x64"
echo "Done Downloading pnpm"

echo "Start Installing pnpm"
chmod +x "/opt/pnpm/$PNPM_VERSION/pnpm-linux-x64"
sudo update-alternatives --install /usr/bin/pnpm pnpm /opt/pnpm/$PNPM_VERSION/pnpm-linux-x64 100
echo "Done Installing pnpm"

pnpm --version