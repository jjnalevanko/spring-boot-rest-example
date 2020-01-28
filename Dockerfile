FROM openjdk:8-jre-alpine
#FROM adoptopenjdk/openjdk12:x86_64-alpine-jre-12.33
# copy application WAR (with libraries inside)
COPY target/spring-boot-rest-example*.war /bt-docker-demo-app.war
# specify default command
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/bt-docker-demo-app.war"]
#CMD ["/opt/java/openjdk/bin/java", "-jar", "-Dspring.profiles.active=test", "/bt-docker-demo-app.war"]