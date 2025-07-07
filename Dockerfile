FROM openjdk:17-jdk-slim
WORKDIR /app

COPY resources /app/resources
COPY target/jira-1.0.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]





