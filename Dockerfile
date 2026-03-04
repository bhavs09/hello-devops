# Step 1: Use official Java 17 base image
FROM eclipse-temurin:17-jre-jammy

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy the JAR file into the container
COPY target/hello-devops-1.0-SNAPSHOT.jar app.jar

# Step 4: Run the JAR file
CMD ["java", "-jar", "app.jar"]
