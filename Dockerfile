FROM openjdk:17-jdk-slim
WORKDIR /app
RUN apt-get update && apt-get install -y maven && rm -rf /var/lib/apt/lists/*
RUN mvn clean install
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar
# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
