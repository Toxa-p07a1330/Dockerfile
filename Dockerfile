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
RUN mkdir cursach && cd cursach && wget https://my-files.su/Save/6joednj/lmanager.tgz && tar -zxvf lmanager.tgz && cd lmanager && cd frontend && yarn install && npm start && cd ../backend && npm install nodemailer && node app.js
