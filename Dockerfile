FROM node:10
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
COPY package-lock.json /usr/src/app
RUN npm install --no-optional
COPY . /usr/src/app

EXPOSE 4000
EXPOSE 9229
EXPOSE 9339
EXPOSE 9500

RUN chmod +x start.sh

CMD ["./start.sh"]
