FROM openjdk:8
RUN curl -O https://github.com/vishalsaini4053/artifacts/blob/master/helloworld-microservice-1.0-SNAPSHOT.jar \
&& chmod 755 helloworld-microservice-1.0-SNAPSHOT.jar \
&& ls -lrt

EXPOSE 8085
ENTRYPOINT ["java","-jar","/helloworld-microservice-1.0-SNAPSHOT.jar","--spring.config.location=file:/application-dev.properties"]