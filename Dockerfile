FROM node:20-alpine@sha256:a369136b6f7640f85acf300ce9d6498d8161972b855a72bbc79273150d4dd0c7 AS builder
ENV NODE_ENV production
WORKDIR /app
COPY package.json .
COPY yarn.lock .
RUN yarn install --production
COPY . .
RUN yarn build

FROM nginx:1.25.2-alpine@sha256:7272a6e0f728e95c8641d219676605f3b9e4759abbdb6b39e5bbd194ce55ebaf as production
ENV NODE_ENV production
COPY --from=builder /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
