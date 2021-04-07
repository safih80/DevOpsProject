FROM node:14
WORKDIR /app
COPY package*.json myApp.js ./
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
