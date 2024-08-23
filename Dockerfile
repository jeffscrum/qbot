FROM adoptopenjdk/openjdk8:alpine-slim

LABEL Description="jdk8u362-b09 + QBot 1.12.0"

RUN mkdir -p /bot/

COPY ./bot /bot/

WORKDIR /bot/

CMD ["java", "-jar", "/bot/qbot.jar"]
