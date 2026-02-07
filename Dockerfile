FROM eclipse-temurin:11-jdk

WORKDIR /app
COPY . .

RUN chmod +x gradlew
RUN ./gradlew build -x test

EXPOSE 8080

CMD ["sh", "-c", "java -jar modules/erp/build/libs/axelor-erp-*.jar"]

