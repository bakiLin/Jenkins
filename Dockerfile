FROM python:latest

RUN pip install pyinstaller

COPY source/hello.py /

CMD ["python", "hello.py"]