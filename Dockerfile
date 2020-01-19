FROM openjdk:8-jdk-alpine as builder

COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY src src
COPY settings.gradle .
RUN chmod +x gradlew
RUN ./gradlew bootJar

FROM openjdk:8-jdk-alpine
USER root
RUN apk update && apk add vim bash curl
RUN adduser --disabled-password --uid 1000 openjdk
COPY --from=builder build/libs/*.jar /data/app.jar


WORKDIR /data
USER openjdk
ENTRYPOINT exec java -Dspring.profiles.active=mysql -jar app.jar container-entrypoint
EXPOSE 8080
