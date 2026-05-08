# Base image
FROM node:20

# App folder create
WORKDIR /app

# Package files copy
COPY package*.json ./

# Dependencies install
RUN npm install

# Pure project copy
COPY . .

# Port expose
EXPOSE 3000

# Start server
CMD ["npm", "start"]