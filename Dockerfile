#task1 dockerfile apcheserver

FROM centos:latest

RUN yum install httpd -y

COPY ./var/www/html/

EXPOSE 80

docker build -t myimage2 .


#task1 dockerfile nginxserver

vi Dockerfile
FROM nginx:alpine
COPY ./index.html /usr/share/nginx/html

#task2 dockerfile for reactapp

FROM node:18-alpine
WORKDIR /frontend
COPY ./*.json /frontend/
RUN npm install
#RUN npm audit fix --force
RUN yarn add react-scripts
# add app
COPY . .
EXPOSE 3000
CMD ["npm", "start"]

