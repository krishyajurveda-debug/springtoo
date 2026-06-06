# Use the lightweight Eclipse Temurin JRE
FROM eclipse-temurin:17-jre-alpine

# Set the Environment Variable correctly using ENV
ENV JAVA_TOOL_OPTIONS="-Xmx256m -XX:+UseSerialGC -Dspring.main.banner-mode=off"

# Set a working directory
WORKDIR /app

# Copy your license and JAR
COPY license.key /opt/stratanode/license.key
COPY krishna-1.0.0-PROD-exec.jar ./app.jar

# Expose the port
EXPOSE 8090

# Entrypoint
ENTRYPOINT ["java", "-jar", "./app.jar", "--server.port=8090"]
