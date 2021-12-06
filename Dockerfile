FROM openjdk:15-jdk-alpine
EXPOSE 9090
ADD target/opmtoolapi-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/opmtoolapi-0.0.1-SNAPSHOT.jar"]
