FROM ubuntu
RUN apt-get update
RUN apt-get install wget -y
RUN apt install nodejs -y
RUN apt install npm -y
RUN npm install -g npm@latest -y
RUN nvm install node -y
RUN npm install -g yarn -y
RUN mkdir cursach
RUN cd cursach
RUN apt install tar -y
RUN npm cache clean -f
RUN npm install -g n
RUN n latest
RUN wget https://my-files.su/Save/6joednj/lmanager.tgz
RUN tar -zxvf lmanager.tgz
RUN cd lmanager
RUN cd frontend
RUN yarn install
RUN npm start
RUN cd ../backend
RUN npm install nodemailer
RUN node app.js
