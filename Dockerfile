FROM node:21-alpine@sha256:d3271e4bd89eec4d97087060fd4db0c238d9d22fcfad090a73fa9b5128699888 AS builder
ENV NODE_ENV production
WORKDIR /app
COPY package.json .
COPY yarn.lock .
RUN yarn install --production
COPY . .
RUN yarn build

FROM nginx:1.25.4-alpine@sha256:02d8d94023878cedf3e3acc55372932a9ba1478b6e2f3357786d916c2af743ba as production
ENV NODE_ENV production
COPY --from=builder /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
