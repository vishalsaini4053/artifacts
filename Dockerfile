FROM openjdk:8
RUN curl -OL "https://github.com/vishalsaini4053/artifacts/raw/master/helloworld-microservice-1.0-SNAPSHOT.jar" \
&& chmod 755 helloworld-microservice-1.0-SNAPSHOT.jar \
&& ls -lrt

EXPOSE 8085
CMD ["sh", "-c", "java -jar helloworld-microservice-1.0-SNAPSHOT.jar $application_args"]