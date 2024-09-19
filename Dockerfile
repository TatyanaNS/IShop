FROM openjdk:11

MAINTAINER Novikova Tatyana

ENV TZ=Europe/Kiev \
    URL=$URL \
    USER_NAME=$USER_NAME \
    DB_PASSWORD=$DB_PASSWORD

COPY target/IShop*.jar IShop-app.jar

ENTRYPOINT ["java", "-jar", "IShop-app.jar"]
