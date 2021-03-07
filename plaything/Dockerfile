ARG BUILD_FROM
FROM ${BUILD_FROM}


# Copy data for add-on
COPY run.sh /
# Package
# RUN apk update

# script
RUN chmod a+x /run.sh

#RUN apk add --no-cache strace

RUN mkdir -p /srv
RUN mkdir -p /srv/volume

VOLUME /data

CMD [ "/run.sh" ]
