FROM jupyter/datascience-notebook:x86_64-ubuntu-22.04

ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}
ENV POSTGRES_DB=${POSTGRES_DB}
ENV POSTGRES_DB=${POSTGRES_PORT}

USER root
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124

WORKDIR /home/jovyan/work/