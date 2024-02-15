FROM openjdk:11-jdk
COPY target/spring-petclinic-2.7.0.jar/
EXPOSE 8088
CMD ["java","-jar","spring-petclinic-2.7.0"]



