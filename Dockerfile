# Image Java officielle
FROM eclipse-temurin:17-jdk

# Dossier de travail
WORKDIR /app

# Copier le projet
COPY . .

# Donner les droits d'exécution à Gradle
RUN chmod +x gradlew

# Construire l'application
RUN ./gradlew clean build -x test

# Exposer le port Axelor
EXPOSE 8080

# Démarrer l'application
CMD ["./gradlew", "bootRun"]
