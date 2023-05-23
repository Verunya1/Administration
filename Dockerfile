FROM maven:3.8.5-openjdk-17-slim AS build
WORKDIR /app
COPY src /app/src
COPY pom.xml /app
RUN mvn -f /app/pom.xml clean package

FROM openjdk:17-jdk-slim
COPY --from=build /app/target/Administration-0.0.1-SNAPSHOT.jar /app/my-app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app/my-app.jar"]
