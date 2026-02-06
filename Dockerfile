FROM eclipse-temurin:11-jdk

WORKDIR /app
COPY . .

RUN chmod +x gradlew
RUN ./gradlew build -x test

# trouver le jar généré
CMD ["java", "-jar", "modules/erp/build/libs/axelor-erp-1.0.0.jar"]

EXPOSE 8080

