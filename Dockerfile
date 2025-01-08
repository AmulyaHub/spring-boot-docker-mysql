# Use an official OpenJDK as a base image
 FROM openjdk:17-jdk-slim

 # Add a label to describe the app
 LABEL description="Spring Boot Hello World with MySQL"

 # Set the working directory inside the container
 WORKDIR /app

 # Copy the packaged JAR file into the container
 COPY target/hello-world.jar hello-world.jar

 # Expose the port Spring Boot runs on
 EXPOSE 8080

 # Run the JAR file
 ENTRYPOINT ["java", "-jar", "hello-world.jar"]