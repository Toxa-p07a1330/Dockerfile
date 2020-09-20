FROM ubuntu
RUN apt-get update
RUN apt-get install wget -y
RUN apt install nodejs -y
RUN apt install npm -y
RUN npm install -g npm@latest -y
RUN npm install node -y
RUN npm install -g yarn -y
RUN apt install tar -y
RUN npm cache clean -f
RUN npm install -g n
RUN n latest
RUN mkdir cursach && cd cursach && wget https://github.com/Toxa-p07a1330/Dockerfile/raw/master/Release.tgz && tar -zxvf Release.tgz && cd Release && cd frontend && yarn install && npm start && cd ../backend && yarn install && node app.js
