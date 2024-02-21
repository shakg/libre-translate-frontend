# Use an official Node.js runtime as a base image
FROM node:20-alpine as build

WORKDIR /usr/src/app

COPY . /usr/src/app

ENV GENERATE_SOURCEMAP=false

ENV NODE_OPTIONS="--max_old_space_size=8192"

RUN npm install -g @angular/cli@latest

RUN npm i

CMD ["ng", "serve", "--host", "0.0.0.0"]
