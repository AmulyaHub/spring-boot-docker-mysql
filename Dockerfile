FROM openjdk:17-jdk-slim
COPY . /app
WORKDIR /app
RUN mvn clean install
ENTRYPOINT ["./docker-entrypoint.sh"]
