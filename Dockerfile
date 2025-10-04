# Stage 1: Build the JAR
FROM maven:3.9.2-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run the JAR
FROM amazoncorretto:17
WORKDIR /app
COPY --from=build /app/target/kube.jar kube.jar
EXPOSE 8080
CMD ["java", "-jar", "kube.jar"]
