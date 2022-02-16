FROM openjdk:11.0-oracle
ARG JAR_FILE=build/libs/config-server-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} config.jar
EXPOSE 8888
ENTRYPOINT ["java","-jar","/config.jar"]