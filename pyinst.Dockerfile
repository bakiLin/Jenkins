FROM python:3.8-slim-buster
RUN apt-get update && apt-get install -y libpq-dev gcc
RUN pip install --upgrade pip