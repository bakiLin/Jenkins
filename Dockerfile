FROM alpine
RUN apk add python 
RUN apk add py-pip
RUN pip install pyinstaller