FROM python:3.9-alpine3.18

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

RUN pip install click && pip install PyYAML && pip install pandas

WORKDIR /opt
RUN apk update && apk upgrade && \
    apk add make

ADD passwd /etc/
ADD group /etc/
