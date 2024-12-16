#!/bin/bash

# Notify the user that setup is in progress
echo "Setting up the environment. Please wait..."
echo "This process may take a few moments."

# Wait for the background script to signal completion
while [ ! -f /tmp/env-setup-complete ]; do
  sleep 2
done

# Notify the user that the environment is ready
echo "Environment setup is complete! You can start the tutorial now."
