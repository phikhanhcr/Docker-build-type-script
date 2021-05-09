FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install -g typescript 

RUN npm run build

COPY .env ./dist

WORKDIR /usr/src/app/dist

EXPOSE 3000

CMD ["node" , "src/app.js"]