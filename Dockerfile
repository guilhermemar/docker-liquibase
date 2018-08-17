FROM alpine:latest

RUN apk add --update openjdk8 bash && rm -rf /var/cache/apk

RUN mkdir /changelog /liquibase

ADD liquibase /liquibase

ENV PATH $PATH:/liquibase

WORKDIR /changelogs

ENTRYPOINT ["liqui"]
