FROM node:latest
MAINTAINER Christian Lück <christian@lueck.tv>

RUN npm install -g json-server

WORKDIR /app
COPY . .

ENTRYPOINT ["json-server", "--watch", "db.json", "--host", "0.0.0.0", "--port", "3000"]


