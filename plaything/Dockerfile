ARG BUILD_FROM=hassioaddons/debian-base
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh

#RUN apk add --no-cache strace

RUN mkdir -p /srv
RUN mkdir -p /srv/volume
#VOLUME /srv/volume
VOLUME /data

CMD [ "/run.sh" ]
