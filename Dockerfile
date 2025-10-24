# Use the official Node.js image as base
FROM node:18-alpine

# Create app directory inside container
WORKDIR /app

# Copy package files first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the app
COPY . .

# Expose the port your app runs on
EXPOSE 3000


# Command to run the app
CMD ["node", "server.js"]

