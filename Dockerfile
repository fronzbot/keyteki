FROM node:10
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
COPY package-lock.json /usr/src/app
RUN npm install --no-optional
COPY . /usr/src/app
RUN node --inspect=0.0.0.0:9339 server/gamenode
RUN node --inspect=0.0.0.0:9229 .
