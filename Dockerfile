# Stage 1: Build TypeScript code
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .



# Expose the port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
