FROM node:18-alpine

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
COPY tsconfig.json ./
COPY src /app/src

RUN npm install
RUN npm run build

EXPOSE 3000
CMD [ "npm", "run", "start" ]

