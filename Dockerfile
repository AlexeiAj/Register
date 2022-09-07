FROM openjdk:17-jdk-alpine AS build
RUN mkdir /app
COPY build/libs/*.jar /app/app.jar
ENTRYPOINT ["java", "-jar","/app/app.jar"]