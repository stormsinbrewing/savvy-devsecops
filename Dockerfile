FROM node:21-alpine@sha256:577f8eb599858005100d84ef3fb6bd6582c1b6b17877a393cdae4bfc9935f068 AS builder
ENV NODE_ENV production
WORKDIR /app
COPY package.json .
COPY yarn.lock .
RUN yarn install --production
COPY . .
RUN yarn build

FROM nginx:1.25.4-alpine@sha256:6a2f8b28e45c4adea04ec207a251fd4a2df03ddc930f782af51e315ebc76e9a9 as production
ENV NODE_ENV production
COPY --from=builder /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
