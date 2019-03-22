# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine

# copy WAR into image
COPY target/authws-0.0.1-SNAPSHOT.war /app.war 

#Copy logging setup
COPY logback.xml /logback.xml

# run application with this command line 
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.war"]