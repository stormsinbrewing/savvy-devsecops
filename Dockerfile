FROM node:alpine AS development
ENV NODE_ENV development
WORKDIR /react-app
COPY ./package.json /react-app
RUN yarn install
COPY . .
CMD yarn start