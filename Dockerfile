FROM openjdk:11-jdk
COPY target/spring-petclinic-2.7.0.jar /app/spring-petclinic-2.7.0.jar

EXPOSE 8080
CMD ["java","-jar","/app/spring-petclinic-2.7.0.jar"]


