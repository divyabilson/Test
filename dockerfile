FROM node:18.17.0-alpine
WORKDIR /app
COPY package*.json ./
# Install dependencies
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
