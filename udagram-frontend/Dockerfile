## Build
FROM beevelop/ionic:v2021.06.1 AS ionic
# Create app directory
RUN apt-get update && apt-get install -y build-essential
RUN apt install -y python2

RUN npm install node-sass@6.0.0


WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./
RUN npm i --legacy-peer-deps
# Bundle app source
COPY . .
RUN ionic build
## Run 
FROM nginx:alpine
#COPY www /usr/share/nginx/html
#RUN apt-get update && apt-get install -y build-essential python2
COPY --from=ionic  /usr/src/app/www /usr/share/nginx/html