FROM adoptopenjdk/openjdk8:alpine-slim

LABEL Description="jdk8u362-b09 + QBot 1.10.0"

RUN mkdir -p /qbot/

COPY files/. /qbot/

WORKDIR /qbot/

CMD ["java", "-jar", "/qbot/qbot.jar"]
