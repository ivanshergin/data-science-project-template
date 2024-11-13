FROM jupyter/datascience-notebook:x86_64-ubuntu-22.04

ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_DB=${POSTGRES_DB}

USER root
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

WORKDIR /home/jovyan/work/