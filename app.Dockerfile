FROM node:22-bookworm

WORKDIR /app

RUN npm i -g @nestjs/cli

COPY --chown=node:node ./app .

USER node

EXPOSE 3000

CMD ["npm", "run", "start:dev"]
