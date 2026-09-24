#!/bin/bash
# save as install_mutagen.sh

ARCH=$(dpkg --print-architecture)
if [ "$ARCH" = "amd64" ]; then MUTAGEN_ARCH="linux-amd64"; 
elif [ "$ARCH" = "arm64" ]; then MUTAGEN_ARCH="linux-arm64"; 
fi

MUTAGEN_VERSION="0.17.6" # Check GitHub for latest
wget -q "https://github.com/mutagen-io/mutagen/releases/download/v${MUTAGEN_VERSION}/mutagen_${MUTAGEN_ARCH}_v${MUTAGEN_VERSION}.tar.gz"
tar -xzf "mutagen_${MUTAGEN_ARCH}_v${MUTAGEN_VERSION}.tar.gz"
sudo mv mutagen /usr/local/bin/
rm "mutagen_${MUTAGEN_ARCH}_v${MUTAGEN_VERSION}.tar.gz"

echo "✅ Mutagen installed. Version: $(mutagen version)"
