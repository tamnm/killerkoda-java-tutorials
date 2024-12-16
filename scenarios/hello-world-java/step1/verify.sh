#!/bin/bash
if command -v java &> /dev/null; then
    java -version
    exit 0
else
    echo "Java is not installed or not found in PATH. Please ensure Java is installed."
    exit 1
fi
