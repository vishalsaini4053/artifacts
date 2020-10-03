FROM openjdk:8
ADD helloworld-microservice-1.0-SNAPSHOT.jar helloworld-microservice-1.0-SNAPSHOT.jar
EXPOSE 8085 
ENTRYPOINT ["java","-jar","/helloworld-microservice-1.0-SNAPSHOT.jar"]