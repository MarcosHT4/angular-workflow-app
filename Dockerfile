FROM node:18-alpine
WORKDIR /app
COPY . .
RUN ["npm", "install"]
RUN ["npm","run","build"]

FROM nginx:1.15
COPY --from=0 /app/dist/angular-workflow-app /usr/share/nginx/html
COPY /nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
