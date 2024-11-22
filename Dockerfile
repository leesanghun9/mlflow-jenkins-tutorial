FROM python:3.10-slim

RUN pip install mlflow scikit-learn pandas numpy

CMD ["mlflow", "server", "--host", "127.0.0.1", "--port", "5000"]
