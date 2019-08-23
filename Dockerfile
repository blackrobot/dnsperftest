FROM alpine:latest

RUN apk add --update --no-cache bash bc drill curl

COPY dnstest.sh providers.txt /usr/src/app/
WORKDIR /usr/src/app

ENTRYPOINT [ "/usr/src/app/dnstest.sh" ]
CMD [ "10" ]
