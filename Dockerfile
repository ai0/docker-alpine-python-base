FROM alpine:latest
MAINTAINER Jing Su <git@jing.su>

COPY ./requirements.txt /tmp/requirements.txt
RUN apk add --no-cache \
    py-pip \
    python \
  && pip install -r /tmp/requirements.txt \
  && rm /tmp/requirements.txt