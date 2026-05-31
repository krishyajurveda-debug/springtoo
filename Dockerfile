FROM eclipse-temurin:17-jre-alpine

# Copy your license and JAR
COPY license.key /opt/stratanode/license.key
COPY krishna-1.0.0-PROD-exec.jar ./app.jar

EXPOSE 8090
ENTRYPOINT ["java", "-jar", "./app.jar", "--server.port=8090"]
