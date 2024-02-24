FROM openjdk:8-jdk-alpine
COPY target/springboot-0.0.1-SNAPSHOT.war service.war
#EXPOSE 9001
ENTRYPOINT ["java","-jar","/service.war"]