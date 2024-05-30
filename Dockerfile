FROM node:22-alpine 

WORKDIR /app

COPY . .

RUN apk add nano

RUN npm install 

RUN npm run build 

CMD ["npm","run","start:dev"]