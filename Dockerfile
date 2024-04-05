FROM node:21.7.2-bookworm-slim
WORKDIR /hello-world
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "npm", "run", "serve" ]