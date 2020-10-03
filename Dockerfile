FROM openjdk:8
ADD helloworld-microservice-1.0-SNAPSHOT.jar helloworld-microservice-1.0-SNAPSHOT.jar
ADD application-dev.properties application-dev.properties
EXPOSE 8085
ENTRYPOINT ["java","-jar","/helloworld-microservice-1.0-SNAPSHOT.jar","--spring.config.location=file:/application-dev.properties"]