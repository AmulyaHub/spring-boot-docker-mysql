FROM openjdk:17-jdk-slim
COPY . /app
WORKDIR /app
RUN apt-get update && apt-get install -y maven && rm -rf /var/lib/apt/lists/*
RUN mvn clean install
# Run the JAR file
ENTRYPOINT ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
