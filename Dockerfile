#usra uma versão do node alpine
FROM node:12.14.0-alpine3.11

#habilitar o bash
RUN apk add --no-cache bash

RUN npm config set cache /home/node/app/.npm-cache --global

#Habilita o cli na versão 2.9, e o nodemon para ssistir as mudanças
# Cada mudança que for feita o nodemon vai recompilar automaaticamente
# o loopback não fica assistindo os arquivos e recompilando, o nodemon ja resolvi isso
RUN npm i -g @loopback/cli@2.9.0 nodemon

USER node

WORKDIR /home/node/app
