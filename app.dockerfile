FROM ubuntu:latest

RUN apt-get update

# Install Node.js
RUN apt-get install --yes curl
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install --yes nodejs
RUN apt-get install --yes build-essential

# Firebase Tools
RUN npm install -g firebase-tools
