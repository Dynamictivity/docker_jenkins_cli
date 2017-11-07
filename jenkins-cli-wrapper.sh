#!/bin/bash

# echo "$@"
if test -z "$JENKINS_URL"; then
  echo "JENKINS_URL environment variable is mandatory"
  exit 1
else
  if [ -f "$PRIVATE_KEY" ]; then
    java -jar jenkins-cli.jar -i $PRIVATE_KEY "$@"
  else
    java -jar jenkins-cli.jar "$@"
  fi
fi
