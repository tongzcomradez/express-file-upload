#FROM node:12.14-alpine
FROM node

RUN apt update && mkdir -p /usr/src/app

WORKDIR /usr/src/app

#RUN rm /usr/local/bin/yarn /usr/local/bin/yarnpkg

COPY . /usr/src/app

#RUN mkdir -p /usr/src/app/tmp && chmod 777 /usr/src/app/tmp

RUN npm install

EXPOSE 8080

CMD [ "node", "server.js"]
