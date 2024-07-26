FROM python:3.10-alpine

WORKDIR /usr/src

COPY /src .
COPY requirements.txt .

RUN apk add --no-cache bash

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
