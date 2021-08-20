FROM java:8
WORKDIR /
ADD target/explorecali-2.0.0-SNAPSHOT.jar //
EXPOSE 8080
RUN mkdir -p /var/migration/
ENTRYPOINT [ "java", "-jar", "-Dspring.profiles.active=docker", "/explorecali-2.0.0-SNAPSHOT.jar"]
