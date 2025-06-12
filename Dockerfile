# Use the official OpenJDK image as the base image
FROM openjdk:17-jdk-slim

# Set working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/ecommerce-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080 (default Spring Boot port)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]