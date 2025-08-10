# Use official Node.js LTS image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files first to leverage Docker cache
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the application
COPY . .

# Build app if needed (for frontend builds)
# RUN npm run build

# Expose port (change if needed)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
