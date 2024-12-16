#!/bin/bash

# Check if the project directory exists
if [ ! -d "helloworld" ]; then
  echo "Error: The project directory 'helloworld' was not created. Ensure you ran the Maven command correctly."
  exit 1
fi

# Check if the App.java file exists
if [ ! -f "helloworld/src/main/java/com/example/App.java" ]; then
  echo "Error: The file 'App.java' was not created. Ensure you ran the Maven command correctly."
  exit 1
fi

# Check that the App.java file contains the correct output logic
if ! grep -q 'System.out.println' "helloworld/src/main/java/com/example/App.java"; then
  echo "Error: The 'App.java' file does not contain a println statement. Ensure the generated code is correct."
  exit 1
fi

# If all checks pass
echo "Verification successful: The project was created correctly, and the 'Hello, World!' program is present."
exit 0