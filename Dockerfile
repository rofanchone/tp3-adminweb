# FROM nginx:alpine
# COPY src/ /usr/share/nginx/html

FROM node:12

WORKDIR /app
COPY package*.json ./

RUN npm install
COPY . .

CMD [ "node", "index.js" ]