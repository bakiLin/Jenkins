FROM python:latest

COPY source/hello.py /

CMD ["python", "hello.py"]