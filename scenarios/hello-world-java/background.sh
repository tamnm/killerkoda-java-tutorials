#!/bin/bash

# Install OpenJDK 17 if not already installed
if ! java -version 2>&1 | grep "17"; then
  echo "Installing OpenJDK 17..."
  sudo apt update -qq
  sudo apt install -y openjdk-17-jdk
fi

# Set JAVA_HOME and update alternatives
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
sudo update-alternatives --set java /usr/lib/jvm/java-17-openjdk-amd64/bin/java

# Install Maven if not already installed
if ! mvn -version &> /dev/null; then
  echo "Installing Maven..."
  sudo apt install -y maven
fi

# Signal that the environment setup is complete
touch /tmp/env-setup-complete
