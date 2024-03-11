FROM python:3.10-slim

WORKDIR /code

COPY requirements.txt .
RUN python -m pip install -r requirements.txt

COPY ./src ./src

COPY ./Makefile ./Makefile 

RUN apt update && apt install -y make
