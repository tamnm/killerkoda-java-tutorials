#!/bin/bash

# Install Java and Maven if not already installed
echo "Setting up the environment..."

# Update package index
sudo apt-get update -y

# Install Java (default JDK)
if ! command -v java &> /dev/null; then
  echo "Installing Java..."
  sudo apt-get install -y default-jdk
else
  echo "Java is already installed."
fi

# Install Maven
if ! command -v mvn &> /dev/null; then
  echo "Installing Maven..."
  sudo apt-get install -y maven
else
  echo "Maven is already installed."
fi

# Verify installations
echo "Java Version:"
java -version

echo "Maven Version:"
mvn -version

echo "Environment setup is complete!"
