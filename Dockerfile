FROM node:14
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm cache clean --force
RUN npm install @angular/cli
RUN npm install
COPY . /usr/src/app
EXPOSE 4200
#CMD ["npm","start"]
