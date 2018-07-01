FROM openjdk:8-jre-alpine

RUN mkdir /usr/app
ADD /build/libs/vx.kt.gh.user-service-0.0.1-fat.jar /usr/app/app.jar
WORKDIR /usr/app
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "app.jar" ]
