FROM node:8.5
MAINTAINER Hartama <haruute0@gmail.com>
LABEL maintainer="haruute0@gmail.com"

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app/
COPY package.json /usr/src/app

RUN npm install

COPY . /usr/src/app

EXPOSE 3000
CMD [ "npm", "start" ]
