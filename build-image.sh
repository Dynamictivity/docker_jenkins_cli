#!/bin/bash
# if [ ! -f jenkins-cli.jar ]; then
#   wget https://jenkins.example.com/jnlpJars/jenkins-cli.jar
# fi

docker build -t dynamictivity/jenkins-cli:latest .
