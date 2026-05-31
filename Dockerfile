FROM eclipse-temurin:17-jre-alpine

# Install dbus-uuidgen (a tool that generates a standard machine ID)
RUN apk add --no-cache dbus && \
    dbus-uuidgen > /etc/machine-id

# Now you can copy it or show it in logs if needed
RUN cat /etc/machine-id 
RUN echo "seeeeeeeeeeeeee"

# This runs the Java command inside the environment that has Java
#ENTRYPOINT ["java", "-jar", "./app.jar", "--server.port=8090"]
