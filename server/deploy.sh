#!/bin/bash

# Install Fly CLI if not installed
if ! command -v flyctl &> /dev/null; then
    echo "Fly CLI not found, installing..."
    curl -L https://fly.io/install.sh | sh
fi

# Create the Fly.io volume if it doesn't exist
flyctl volumes list | grep -q findmybills_data || flyctl volumes create findmybills_data --size 1

# Deploy the application
flyctl deploy 