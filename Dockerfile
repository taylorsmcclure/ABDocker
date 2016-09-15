FROM alpine:3.3
MAINTAINER Taylor McClure github.com/taylorsmcclure

RUN apk update \
    && apk add --no-cache --virtual temp-pkgs g++ make git \
    && apk add --no-cache python nodejs \
    && npm install npm -g \
    && addgroup -S awesomebot \
    && adduser -h /awesomebot -s /sbin/nologin -S awesomebot -g awesomebot \
    && npm init --yes \
    && npm i https://github.com/taylorsmcclure/AwesomeBot.git#docker \
    && chown -R awesomebot:awesomebot /node_modules \
    && apk del --purge temp-pkgs

USER awesomebot
WORKDIR "/node_modules/AwesomeBot"
EXPOSE 8080
ENTRYPOINT ["/usr/bin/node", "bot.js"]
