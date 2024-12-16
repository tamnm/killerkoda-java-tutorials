# Step 3: Building and Running Your Java Program

In this step, you will build the Maven project and run the "Hello, World!" application to verify everything works as expected.

## Building the Project

1. Navigate to the `helloworld` project directory (if you’re not already there):

   ```bash
   cd helloworld
   ```{{exec}}

2. Run the following command to build the project:

   ```bash
   mvn package
   ```{{exec}}

   If the build is successful, you will see output similar to this:

   ```
   [INFO] Building jar: /path/to/helloworld/target/helloworld-1.0-SNAPSHOT.jar
   [INFO] BUILD SUCCESS
   ```

## Running the Application

3. Run the application using the following command:

   ```bash
   java -cp target/helloworld-1.0-SNAPSHOT.jar com.example.App
   ```{{exec}}

   This should display the following output:

   ```
   Hello, World!
   ```

## Next Step

Congratulations! You have successfully built and executed your "Hello, World!" Java application. You can now explore more features of Java and Maven or proceed to the conclusion of this tutorial.