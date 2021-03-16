FROM node:12.2.0-alpine

WORKDIR /my-path

COPY . .

ENV NODE_ENV production

RUN yarn install && yarn build

EXPOSE 1337

CMD ["yarn", "start"]