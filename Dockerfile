FROM openjdk:11-jre
COPY . /app
WORKDIR /app
RUN mvn clean install
ENTRYPOINT ["./docker-entrypoint.sh"]
