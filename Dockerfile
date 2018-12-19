# Dockerizing MongoDB: Dockerfile for building MongoDB images
# Based on ubuntu:16.04, installs MongoDB following the instructions from:
# http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/

FROM node:8

# Installation:

#making dir for the application
RUN mkdir node-easy-app

WORKDIR /node-easy-app

COPY package*.json ./

RUN npm install

COPY . .

#first command to exec
CMD [ "node", "server.js" ]
