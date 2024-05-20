# FROM amazoncorretto:17
FROM alpine:3.14
# Install OpenJDK (Java Runtime Environment)
RUN apk add --no-cache openjdk11

# Set the working directory
WORKDIR /app

ARG JAR_FILE=target/*.jar
# WORKDIR /opt/app
COPY ${JAR_FILE} springboot-github-action.jar
ENTRYPOINT ["java", "-jar", "/springboot-github-action.jar"]
EXPOSE 8080
