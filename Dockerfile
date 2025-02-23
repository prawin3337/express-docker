FROM ubuntu
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_22.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

RUN mkdir node-server

COPY package.json node-server/package.json
COPY src node-server/src
RUN cd node-server && npm install

ENTRYPOINT [ "node", "./node-server/src/main.js"]