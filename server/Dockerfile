FROM node:alpine

WORKDIR /home/webapp/

COPY package*.json ./
RUN npm install

COPY ./ ./

CMD ["npm", "run", "start"]
