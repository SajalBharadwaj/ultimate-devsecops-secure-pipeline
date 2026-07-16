# Latest secure base image use kar rahe hain
FROM node:22-alpine

WORKDIR /usr/src/app

COPY package*.json ./

# Pinned production dependency build
RUN npm ci --only=production

COPY app.js ./

# Non-root user for security hardening
USER node

EXPOSE 3000

CMD ["node", "app.js"]
