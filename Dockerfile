FROM python:3.7-alpine
MAINTAINER Kalenshi Katebe

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN python3 -m venv ./weatherEnv
RUN source ./weatherEnv/bin/activate
RUN pip install -r /requirements.txt

RUN mkdir /awa
WORKDIR /awa

COPY ./awa /awa

RUN adduser -D user
USER user
