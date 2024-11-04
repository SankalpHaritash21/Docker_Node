# Use a base image
FROM node:23-alpine

# Set the working directory
WORKDIR /src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the app’s port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
