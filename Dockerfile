# Use the official Node.js image as a base image
FROM node:18

WORKDIR /create-react-app					# Set the working directory inside the container

RUN npm install -g create-react-app			# Install Create React App globally

RUN npx create-react-app my-react-app		# Create a new React app

WORKDIR /app/my-react-app					# Set the working directory to the new React app


# Expose the port that the React app runs on
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]