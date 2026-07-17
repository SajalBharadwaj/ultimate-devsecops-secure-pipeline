FROM node:22-alpine

WORKDIR /usr/src/app

COPY package*.json ./

# npm ci ki jagah normal install jo bina lockfile ke chal jaye
RUN npm install --only=production

COPY app.js ./

USER node

EXPOSE 3000

CMD ["node", "app.js"]
