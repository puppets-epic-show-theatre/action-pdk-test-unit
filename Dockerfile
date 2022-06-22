ARG PDKIMAGE=puppet/pdk:latest

FROM $PDKIMAGE

RUN apt update && apt add --no-cache build-base

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
