FROM        ubuntu:16.04
RUN         apt-get update && apt-get install -y build-essential tcl wget
RUN         apt-get install -y nodejs npm
RUN         mkdir -p /usr/src/app
WORKDIR     /usr/src/app
