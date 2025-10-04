# Use Amazon Corretto JDK 17 as the base image
FROM amazoncorretto:17

# Maintainer information (modern label format recommended)
LABEL maintainer="Abhishek Jadon <jadonabhi0@gmail.com>"

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/kube.jar kube.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "kube.jar"]