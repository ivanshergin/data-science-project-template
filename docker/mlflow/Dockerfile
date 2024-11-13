FROM ghcr.io/mlflow/mlflow:v2.17.2

WORKDIR /mlflow

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["mlflow", "ui", "--host", "0.0.0.0"]