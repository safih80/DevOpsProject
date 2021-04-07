FROM node:14
WORKDIR /
COPY package*.json myApp.js ./
RUN npm install
EXPOSE 3000
CMD ["node", "myApp.js"]
