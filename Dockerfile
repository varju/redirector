# syntax=docker/dockerfile:1

FROM node:current-alpine3.12

ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]
RUN npm install --production

COPY . .

CMD [ "node", "server.js" ]

LABEL org.opencontainers.image.source=https://github.com/varju/redirector
