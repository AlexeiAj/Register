FROM gradle:jdk17-alpine AS build
WORKDIR /opt/app
COPY ./ /opt/app
RUN gradle clean build

FROM openjdk:17-jdk-alpine
COPY --from=build /opt/app/build/libs/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]