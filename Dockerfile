FROM node:carbon

COPY . /app
WORKDIR /app

ENV NODE_ENV development

RUN apt-get update && apt-get install -y git-core
RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]
