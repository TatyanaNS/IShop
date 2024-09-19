FROM maven:3.8.5-openjdk-17 AS build

MAINTAINER Novikova Tatyana

ENV TZ=Europe/Kiev \
    URL=$URL \
    USER_NAME=$USER_NAME \
    DB_PASSWORD=$DB_PASSWORD

COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/IShop*.jar IShop-app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "IShop-app.jar"]
