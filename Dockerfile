# Estágio de Build
FROM maven:3.8.4-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

# Estágio de Execução
FROM eclipse-temurin:17-jdk-alpine
COPY --from=build /target/*.jar app.jar
# O Render exige que a aplicação use a porta que ele definir
EXPOSE 8080
ENTRYPOINT ["java", "-Xmx300m", "-Xms300m", "-jar", "/app.jar"]
