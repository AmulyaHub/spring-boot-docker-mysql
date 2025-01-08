FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo-0.0.1-SNAPSHOT.jar
RUN apt-get update && apt-get install -y maven && rm -rf /var/lib/apt/lists/*
RUN mvn clean install
# Run the JAR file
ENTRYPOINT ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
