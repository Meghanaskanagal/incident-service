FROM docker.io/meghanaskanagal/test:first1

ENV JAVA_APP_DIR=/deployments

EXPOSE 8080 8443

WORKDIR /home/jboss/app/target/
COPY incident-service-1.1.0-SNAPSHOT.jar /deployments/

