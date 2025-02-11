# Our node app is based on `18-alpine` image 
FROM node:18-alpine

# Setting up the environment variables needed:
ENV DOMAIN="http://localhost:3000" \
PORT=3000 \
STATIC_DIR="./client" \
PUBLISHABLE_KEY="pk_test_51QrGJJIT95FnaVcw4yTngDGDMrHacGHiLcx4uqQiPMJTfZh8gvibM6EnlpOsvqUXo1ucW1tLZZE68iyinCmQGsAz00LNEBFUtI" \
SECRET_KEY="sk_test_51L5AsSSCC8JVWfvgxpyZvQyBRRkHmGBkdyIa94vPD3Zs71qbHGrnSPlrJOIWiR74fbcn1A85yESCFnrrp3aX0Oz900JaunHrhe"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .


EXPOSE 3000

CMD ["node", "server.js"]
