FROM ubuntu
RUN apt-get update
RUN apt-get install wget -y
RUN apt install nodejs -y
RUN apt install npm -y
RUN npm install node -y
RUN apt install tar -y
RUN mkdir cursach && cd cursach && wget https://github.com/Toxa-p07a1330/Dockerfile/raw/master/Release.tgz && tar -zxvf Release.tgz && cd Release && cd frontend && npm install && npm start && cd ../backend && npm install && node app.js
