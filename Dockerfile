FROM node:14-alpine
# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose a port (optional - only if your application listens on a specific port)
EXPOSE 3000

# Start the Node.js application
CMD [ "node", "server.js" ]
