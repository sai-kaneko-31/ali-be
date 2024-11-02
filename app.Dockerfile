FROM node:22-bookworm

EXPOSE 3000

USER root
RUN npm i -g @nestjs/cli

USER node
WORKDIR /app
COPY --chown=node:node ./app/package*.json .
RUN npm install
COPY --chown=node:node ./app .

CMD ["npm", "run", "start:dev"]
