FROM node:18.17.0-alpine
WORKDIR /app
COPY package*.json ./
# Install dependencies
RUN npm install
#RUN npm install -g pm2
COPY . .
EXPOSE 3000
CMD ["npm", "run"]
