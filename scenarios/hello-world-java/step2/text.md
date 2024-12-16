# Step 2: Creating a Java Project Using Maven Archetype

In this step, you will use Maven to generate a new Java project that includes a "Hello, World!" example.

## Generating a New Maven Project

1. Run the following command to create a new Maven project:

   ```bash
   mvn archetype:generate \
     -DarchetypeGroupId=org.apache.maven.archetypes \
     -DarchetypeArtifactId=maven-archetype-quickstart \
     -DarchetypeVersion=1.4 \
     -DgroupId=com.example \
     -DartifactId=helloworld \
     -DinteractiveMode=false
   ```{{exec}}

   This will create a new project named `helloworld` with the following directory structure:

   ```
   helloworld/
   ├── src/
   │   ├── main/
   │   │   └── java/
   │   │       └── com/
   │   │           └── example/
   │   │               └── App.java
   │   ├── test/
   │       └── java/
   │           └── com/
   │               └── example/
   │                   └── AppTest.java
   ├── pom.xml
   ```

2. View the generated `App.java` file to ensure it contains the "Hello, World!" code:

   ```bash
   cat helloworld/src/main/java/com/example/App.java
   ```{{exec}}

   The file should contain the main method for printing "Hello, World!".

## Next Step

After confirming the project setup and code, proceed to Step 3 to build and run the program using Maven.