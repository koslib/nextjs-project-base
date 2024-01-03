FROM node:18

WORKDIR /app

RUN apt-get update && apt-get install -y bash

COPY package.json .
COPY entrypoint.sh /entrypoint.sh

RUN npm install

COPY . .

EXPOSE 3000

ENTRYPOINT [ "bash", "/entrypoint.sh" ]