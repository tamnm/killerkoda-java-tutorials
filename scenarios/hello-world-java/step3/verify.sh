#!/bin/bash

# Check if the project directory exists
if [ ! -d "helloworld" ]; then
  echo "Error: The project directory 'helloworld' is missing. Ensure you followed Step 2 correctly."
  exit 1
fi

# Check if the target directory exists (indicating a successful build)
if [ ! -d "helloworld/target" ]; then
  echo "Error: The 'target' directory is missing. Ensure you ran 'mvn package' to build the project."
  exit 1
fi

# Check if the JAR file exists
if [ ! -f "helloworld/target/helloworld-1.0-SNAPSHOT.jar" ]; then
  echo "Error: The JAR file 'helloworld-1.0-SNAPSHOT.jar' is missing. Ensure you built the project successfully."
  exit 1
fi

# Run the application and verify the output
output=$(java -cp helloworld/target/helloworld-1.0-SNAPSHOT.jar com.example.App 2>&1)
if [[ "$output" == *"Hello, World!"* ]]; then
  echo "Verification successful: The project built successfully and the application output is correct."
  exit 0
else
  echo "Error: The application did not produce the expected output. Check your code and build process."
  exit 1
fi
