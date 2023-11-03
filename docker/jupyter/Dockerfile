FROM jupyter/datascience-notebook:latest

ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_DB=${POSTGRES_DB}

USER root
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

WORKDIR /home/jovyan/work/