FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . /app

RUN ./gradlew build -x test

EXPOSE 8080

CMD ["java", "-jar", "build/libs/spring-petclinic-3.4.0.jar"]
