FROM mcr.microsoft.com/devcontainers/javascript-node:0-18

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install git less man-db sudo

# Set `DEVCONTAINER` environment variable to help with orientation
ENV DEVCONTAINER=true
