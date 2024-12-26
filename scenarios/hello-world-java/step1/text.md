# Step 1: Introduction to Java and Development Environment

In this step, you will set up your development environment and ensure that Java is correctly installed.

## What is Java?

Java is a versatile and widely used programming language known for its portability, reliability, and extensive libraries. It is a great starting point for anyone new to programming.

## Step-by-Step Environment Setup

Follow these instructions to set up your development environment:

### 1. Check if Java is Installed

1. Open the terminal in the provided environment.
2. Run the following command to check if Java is installed:

    ```bash
    java -version
    ```{{exec}}

    *Click the command above to execute it.*

3. If Java is installed, you should see output similar to this:

    ```
    java version "17.x.x"
    Java(TM) SE Runtime Environment (build 17.x.x)
    Java HotSpot(TM) 64-Bit Server VM (build 17.x.x, mixed mode)
    ```

4. If Java is not installed or the version is incorrect, proceed to the next step to install OpenJDK 17.

### 2. Install OpenJDK 17

1. Run the following commands to install OpenJDK 17:

    ```bash
    sudo apt update -qq
    sudo apt install -y openjdk-17-jdk
    ```{{exec}}

2. After installation, set the `JAVA_HOME` environment variable and update the alternatives:

    ```bash
    export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
    export PATH=$JAVA_HOME/bin:$PATH
    sudo update-alternatives --set java /usr/lib/jvm/java-17-openjdk-amd64/bin/java
    ```{{exec}}

3. Verify the installation by running:

    ```bash
    java -version
    ```{{exec}}

### 3. Install Maven

Maven is a build tool used for Java projects. To install Maven:

1. Run the following command:

    ```bash
    sudo apt install -y maven
    ```{{exec}}

2. Verify Maven installation by running:

    ```bash
    mvn -version
    ```{{exec}}

### 4. Install Tree Command (Optional)

The `tree` command is useful for visualizing directory structures. To install it:

1. Run the following command:

    ```bash
    sudo apt install -y tree
    ```{{exec}}

2. Verify the installation by running:

    ```bash
    tree --version
    ```{{exec}}

## Verify Your Setup

To confirm that the environment is set up correctly:

1. Ensure `java`, `mvn`, and `tree` (optional) commands are recognized in the terminal by running:

    ```bash
    java -version
    mvn -version
    tree --version
    ```{{exec}}

2. If all commands return their respective version information, your setup is complete.

## Next Step

Once Java is confirmed to be installed, proceed to Step 2 to write your first Java program.
