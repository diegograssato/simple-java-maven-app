FROM maven:3.3.9-jdk-8-alpine AS build
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package
 
FROM openjdk:8-jre-alpine

ENV APP_HOME /usr/apps

COPY --from=build /tmp/target/my-app.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT ["sh", "-c"]

CMD ["exec java -jar app.jar"]