# Use a Node.js base image
FROM node:14-alpine

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies
RUN npm install

# Expose port 8080
EXPOSE 8080

# Start the app
CMD ["npm", "start"]
