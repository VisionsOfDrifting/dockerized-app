# use as to tag stages of phases
FROM node:alpine as builder
WORKDIR /home/webapp/
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# The second from statement seperates the block
FROM nginx
# /usr/share/nginx/html is a nginx thing
COPY --from=builder /home/webapp/build /usr/share/nginx/html
