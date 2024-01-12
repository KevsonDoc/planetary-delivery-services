FROM node:20.11 as development

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install

COPY . .

EXPOSE 3333

CMD [ "yarn", "start:dev" ]