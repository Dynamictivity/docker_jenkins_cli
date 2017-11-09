docker_jenkins_cli
------------------
This is the source code for a Docker image that lets you execute Jenkins CLI from a Docker container. This is quite useful for such tools as gitlab-ci and other times where you need a disposable and/or on-demand jenkins-cli Docker container.

This comes with `jenkins-cli.jar` bundled.

## Sample run command
Without auth:
```
docker run -it --rm \
  -e "JENKINS_URL=http://jenkins.example.com:8080" \
  dynamictivity/jenkins-cli help
```

With auth:
```
docker run -it --rm \
  -v $HOME/.ssh:/ssh \
  -e "JENKINS_URL=http://jenkins.example.com:8080" \
  chickenzord/jenkins-cli help
```

Replace `help` with your jenkins-cli command. See [Jenkins CLI wiki page](https://wiki.jenkins-ci.org/display/JENKINS/Jenkins+CLI) for more information.


## Configuration
The CLI can be configured using environment variables.

- `JENKINS_URL`: **required**
- `PRIVATE_KEY`: *optional* (default: `/ssh/id_rsa`)

# noscript Branch
This repo contains a `noscript` branch which keeps the default `Ubuntu` Docker image's `entrypoint` script, instead of the custom `entrypoint` script crafted for `jenkins-cli`. This is useful in such situations as `gitlab-ci` which call the `entrypoint` script and would consequently fail to call the `jenkins-cli` binary properly during the build process.
