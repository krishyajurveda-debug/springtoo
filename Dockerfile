# This tells Render to pull an image that ALREADY has Java installed
FROM eclipse-temurin:17-jre-alpine
RUN cat /etc/machine-id
COPY license.key /opt/stratanode/license.key

# This copies your file into the image
COPY krishna-1.0.0-PROD-exec.jar ./app.jar

# This tells the server to listen on 8090
EXPOSE 8090

# This runs the Java command inside the environment that has Java
#ENTRYPOINT ["java", "-jar", "./app.jar", "--server.port=8090"]
