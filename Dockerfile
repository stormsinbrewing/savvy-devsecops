FROM node:21-alpine@sha256:39bf945d56c29e7b3fa51632a7a07080475e5d5e5fc981543cdb735bc3bc01eb AS builder
ENV NODE_ENV production
WORKDIR /app
COPY package.json .
COPY yarn.lock .
RUN yarn install --production
COPY . .
RUN yarn build

FROM nginx:1.25.3-alpine@sha256:db353d0f0c479c91bd15e01fc68ed0f33d9c4c52f3415e63332c3d0bf7a4bb77 as production
ENV NODE_ENV production
COPY --from=builder /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
