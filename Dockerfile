FROM openjdk:17-jdk-alpine
COPY --from=build /build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]