FROM openjdk:21-jdk
VOLUME /tmp
COPY target/awesome-app-api-gateway-*.jar app.jar
#EXPOSE 80
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]