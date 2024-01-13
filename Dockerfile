# Use an official Node runtime as the base image
FROM node:16

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json into the directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Bundle the app source inside the Docker image
COPY . .

# Make port 8080 available to the outside of the Docker container
EXPOSE 8080

# Define the command to run the app
CMD [ "npm", "run", "serve" ]