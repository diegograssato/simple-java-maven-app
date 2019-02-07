FROM openjdk:8-jre-alpine

FROM maven:3.3.9-jdk-8-alpine AS build
COPY pom.xml /tmp/
COPY src /tmp/src/
WORKDIR /tmp/
RUN mvn package

FROM openjdk:8-jre-alpine

ARG APP_FILE
ARG APP_VERSION
ARG COMMIT_HASH

LABEL NAME=$APP_FILE
LABEL VERSION=$APP_VERSION
LABEL COMMIT_HASH=$COMMIT_HASH

ENV APP_HOME /usr/apps

COPY --from=build /tmp/target/$APP_FILE $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT ["sh", "-c"]

CMD ["exec java -jar app.jar"]