#Download base image ubuntu 16.04
FROM ubuntu:16.04

RUN apt-get update \
    && add-apt-repository ppa:openjdk-r/ppa \
    && apt-get update \
    && apt-get install openjdk-8-jre

RUN mkdir /jenkins-cli
WORKDIR /jenkins-cli
ADD . /jenkins-cli
