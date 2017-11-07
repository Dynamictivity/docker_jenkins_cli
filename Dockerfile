#Download base image ubuntu 16.04
FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y openjdk-8-jre && \
	apt-get install -y ant && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

RUN mkdir /jenkins-cli
WORKDIR /jenkins-cli
ADD . /jenkins-cli
