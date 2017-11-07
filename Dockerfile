#Download base image ubuntu 16.04
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y openjdk-8-jre ant && \
	apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir /jenkins-cli
WORKDIR /jenkins-cli
ADD . /jenkins-cli

# Temporarily disable entrypoint and cmd for testing
#ENTRYPOINT ["./jenkins-cli-wrapper.sh"]
#CMD ["help"]
