# Two stage build
# Stage 1: install Maven, test and package
FROM openjdk:alpine AS builder

WORKDIR /app

COPY . .

RUN \
    # Install Maven
    apk add --no-cache maven \
    # Run tests
    && mvn test \
    # Package
    && mvn package

# Stage 2: copy .jar
FROM openjdk:alpine

ENV PORT=8080

WORKDIR /app

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
