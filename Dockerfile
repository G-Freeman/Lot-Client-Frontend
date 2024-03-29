FROM node:11.13.0-alpine
#ENV APP_ROOT /web
#ENV NODE_ENV production
RUN mkdir -p /usr/src/my_app
#WORKDIR /usr/src/nuxt-app

WORKDIR /usr/src/my_app
ADD . /usr/src/my_app
#RUN apk update && apk upgrade
#RUN apk add git

#RUN npm ci
#RUN npm run build
#COPY . /usr/src/nuxt-app/
#RUN npm install
RUN npm ci
RUN npm run build

CMD ["npm", "run", "start"]
#CMD [ "npm", "start" ]


## Dockerfile
#FROM node:11.13.0-alpine
#
## create destination directory
#RUN mkdir -p /usr/src/nuxt-app
#WORKDIR /usr/src/nuxt-app
#
## update and install dependency
#RUN apk update && apk upgrade
#RUN apk add git
#
## copy the app, note .dockerignore
#COPY . /usr/src/nuxt-app/
#RUN npm install
#RUN npm run build
#
#EXPOSE 3000
#
#ENV NUXT_HOST=0.0.0.0
#ENV NUXT_PORT=3000
#
#CMD [ "npm", "start" ]
