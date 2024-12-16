#!/bin/bash

# Define the project root directory
PROJECT_DIR="/root/helloworld"

# Check if the project directory exists
if [ ! -d "$PROJECT_DIR" ]; then
  echo "Error: The project directory '$PROJECT_DIR' does not exist. Ensure you followed Step 2 correctly."
  exit 1
fi

# Check if the target directory exists (indicating a successful build)
if [ ! -d "$PROJECT_DIR/target" ]; then
  echo "Error: The 'target' directory is missing. Ensure you ran 'mvn package' to build the project."
  exit 1
fi

# Check if the JAR file exists
if [ ! -f "$PROJECT_DIR/target/helloworld-1.0-SNAPSHOT.jar" ]; then
  echo "Error: The JAR file 'helloworld-1.0-SNAPSHOT.jar' is missing. Ensure you built the project successfully."
  exit 1
fi

# Run the application and verify the output
output=$(java -cp "$PROJECT_DIR/target/helloworld-1.0-SNAPSHOT.jar" com.example.App 2>&1)

# Normalize the output (lowercase and remove punctuation for flexible matching)
normalized_output=$(echo "$output" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]')

if [[ "$normalized_output" == *"hello world"* ]]; then
  echo "Verification successful: The project built successfully, and the application output is correct."
  exit 0
else
  echo "Error: The application did not produce the expected output. Ensure the 'App.java' code contains a print statement for 'Hello World'."
  exit 1
fi
