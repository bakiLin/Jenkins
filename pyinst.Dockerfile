FROM jenkins/jenkins:2.440.2-jdk11
USER root
RUN apt-get update && apt-get install -y lsb-release python3-pip
RUN apt-get update && apt-get install -y docker-ce-cli
RUN pip install -r requirements.txt