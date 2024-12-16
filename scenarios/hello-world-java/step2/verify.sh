#!/bin/bash

# Define the project root directory
PROJECT_DIR="/root/helloworld"

# Check if the project directory exists
if [ ! -d "$PROJECT_DIR" ]; then
  echo "Error: The project directory '$PROJECT_DIR' was not created. Ensure you ran the Maven command correctly."
  exit 1
fi

# Check if the App.java file exists
APP_FILE="$PROJECT_DIR/src/main/java/com/example/App.java"
if [ ! -f "$APP_FILE" ]; then
  echo "Error: The file 'App.java' was not created. Ensure you ran the Maven command correctly."
  exit 1
fi

# Check that the App.java file contains a System.out.println statement
if ! grep -q 'System.out.println' "$APP_FILE"; then
  echo "Error: The 'App.java' file does not contain a println statement. Ensure the generated code is correct."
  exit 1
fi

# Normalize the println statement to check for flexible output
println_content=$(grep 'System.out.println' "$APP_FILE" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]')
if [[ "$println_content" != *"hello world"* ]]; then
  echo "Error: The 'App.java' file does not contain the expected output for 'Hello World'."
  exit 1
fi

# If all checks pass
echo "Verification successful: The project was created correctly, and the 'Hello World' logic is present."
exit 0
