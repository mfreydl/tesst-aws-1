# syntax = docker/dockerfile:1.0-experimental
FROM node:latest
WORKDIR /app
COPY ./dist /app
COPY ./tsconfig.json /app
COPY package.json /app
COPY package-lock.json /app
RUN npm i
CMD ["node", "./index.js"]