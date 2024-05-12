FROM openjdk:8
EXPOSE 8080
ADD target/springboot-github-action.jar springboot-images-new.jar
ENTRYPOINT ["java","-jar","/springboot-github-action.jar"]