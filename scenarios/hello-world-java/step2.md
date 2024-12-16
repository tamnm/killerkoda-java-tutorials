# Step 2: Create a Maven Project

Run the following command to generate a Maven project:

```bash
mvn archetype:generate \
  -DarchetypeGroupId=org.apache.maven.archetypes \
  -DarchetypeArtifactId=maven-archetype-quickstart \
  -DarchetypeVersion=1.4 \
  -DgroupId=com.example \
  -DartifactId=helloworld \
  -DinteractiveMode=false
```

```markdown
cd helloworld

Verify the generated project structure:

```bash
tree
```
You should see a folder structure similar to:
```bash
helloworld/
├── pom.xml
└── src
    ├── main
    │   └── java
    │       └── com
    │           └── example
    │               └── App.java
    └── test
        └── java
            └── com
                └── example
                    └── AppTest.java
```