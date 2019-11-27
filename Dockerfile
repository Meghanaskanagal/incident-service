FROM registry.redhat.io/openjdk/openjdk-8-rhel8:1.0

ENV JAVA_APP_DIR=/deployments

EXPOSE 8080 8443

COPY . /app

WORKDIR /app


RUN ["mvn", "dependency:resolve"]  
RUN ["mvn", "verify"]

RUN ["mvn", "package"]
COPY /home/jboss/app/target/incident-service-1.1.0-SNAPSHOT.jar /deployments/

