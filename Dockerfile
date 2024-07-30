FROM amazoncorretto:17

ARG MAINTAINER
LABEL maintainer = ${MAINTAINER}

COPY target/DockerTask-1.0-SNAPSHOT.jar DockerTask-1.0-SNAPSHOT.jar
COPY src/main/resources/maven.properties maven.properties

ENTRYPOINT ["java", "-jar", "DockerTask-1.0-SNAPSHOT.jar"]
EXPOSE 8080