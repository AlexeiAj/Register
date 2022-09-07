FROM openjdk:17-jdk-alpine
COPY --from=build build/libs/register-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]