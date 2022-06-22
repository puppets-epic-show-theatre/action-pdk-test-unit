ARG PDKIMAGE=puppet/pdk:latest

FROM $PDKIMAGE

RUN apk update && apk add --no-cache build-base

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
