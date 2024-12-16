#!/bin/bash

# Check if Java is installed
if ! command -v java &> /dev/null; then
  echo "Java is not installed. Installing Java..."
  sudo apt update -qq
  sudo apt install -y openjdk-11-jdk
else
  echo "Java is already installed."
fi

# Check if Maven is installed
if ! command -v mvn &> /dev/null; then
  echo "Maven is not installed. Installing Maven..."
  sudo apt install -y maven
else
  echo "Maven is already installed."
fi

# Signal that the environment setup is complete
touch /tmp/env-setup-complete
