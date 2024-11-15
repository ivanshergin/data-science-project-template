FROM ghcr.io/mlflow/mlflow:v2.18.0rc0

WORKDIR /mlflow

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000