FROM openjdk:17-jdk-alpine
RUN dir ./build/libs/
COPY /build/libs/register-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]