FROM openjdk:21-jdk
COPY target/demo-0.0.1-SNAPSHOT.war service.war
#EXPOSE 9003
ENTRYPOINT ["java","-jar","/service.war"]