# Use the official Node.js image as a base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Install Create React App globally
RUN npm install -g create-react-app

# Create a new React app
RUN npx create-react-app my-react-app

# Set the working directory to the new React app
WORKDIR /app/my-react-app

# Expose the port that the React app runs on
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]