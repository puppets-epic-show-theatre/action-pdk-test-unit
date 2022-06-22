ARG PDKIMAGE=puppet/pdk:latest

FROM $PDKIMAGE

RUN apt-get update && apt-get install build-essential

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
