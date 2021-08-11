FROM webdevops/base:alpine

MAINTAINER Tobias Hertel tobias@hertel.me

ENV HTTRACK_URI  ""

ENV HTTRACK_OPTS "-O mirror"


COPY conf/ /opt/docker/

RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing httrack \
    && docker-image-cleanup

WORKDIR /app

CMD ["httrack"]