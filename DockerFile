FROM openjdk:8
EXPOSE 8080
ADD target/opmtoolapi-0.0.1-SNAPSHOT.jar opmtoolapi-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/opmtoolapi-0.0.1-SNAPSHOT.jar"]
