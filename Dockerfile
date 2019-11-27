FROM docker.io/meghanaskanagal/test:first

ENV JAVA_APP_DIR=/deployments

EXPOSE 8080 8443

WORKDIR /app

RUN ["mvn", "verify"]

RUN ["mvn", "package"]
COPY /home/jboss/app/target/incident-service-1.1.0-SNAPSHOT.jar /deployments/

