FROM openjdk:11-jdk
COPY target/*.jar /
EXPOSE 8080
CMD ["java","-jar","*.jar"]

