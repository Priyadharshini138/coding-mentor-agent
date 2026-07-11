FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app

COPY coding-mentor-backend/pom.xml coding-mentor-backend/pom.xml
COPY coding-mentor-backend/src coding-mentor-backend/src
COPY coding-mentor-frontend coding-mentor-frontend

WORKDIR /app/coding-mentor-backend
RUN mvn -DskipTests package

FROM eclipse-temurin:17-jre-jammy
WORKDIR /app
COPY --from=build /app/coding-mentor-backend/target/coding-mentor-backend-0.0.1-SNAPSHOT.jar ./app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
