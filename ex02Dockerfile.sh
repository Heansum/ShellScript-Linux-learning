#!/bin/bash

filename="springboot-sample-app.jar"
MAINTAINER=$USER
PORT="8080"
VOLUME_DIR="/tmp"

cat << _EOF_
FROM openjdk:8-jdk-alpine as builder

LABEL maintainer=$MAINTAINER

COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src

RUN chmod +x ./gradlew
RUN ./gradlew bootjar

FROM openjdk:8-jdk-alpine

COPY --from=builder build/libs/*.jar $filename
VOLUME $VOLUME_DIR
EXPOSE $PORT

ENTRYPOINT ["java", "-jar", "/$filename"]
_EOF_
