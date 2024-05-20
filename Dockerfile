FROM amazoncorretto:17
ARG JAR_FILE=target/*.jar
# WORKDIR /opt/app
COPY ${JAR_FILE} springboot-github-action.jar
ENTRYPOINT ["java", "-jar", "/springboot-github-action.jar"]
EXPOSE 8080




