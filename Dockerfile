FROM eclipse-temurin:11-jdk

WORKDIR /app
COPY . .

RUN chmod +x gradlew

EXPOSE 8080

CMD ["./gradlew", "bootRun"]

