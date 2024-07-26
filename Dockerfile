FROM python:3.10-alpine

WORKDIR /usr/src

COPY /src .
COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
