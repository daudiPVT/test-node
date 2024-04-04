FROM node:14
# Use an official Node.js runtime as the base image
RUN mkdir /usr/src/app

# Set the working directory in the container
WORKDIR /user/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH
# Copy package.json and package-lock.json to the working directory
COPY package*.json /user/src/app

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . /user/src/app/

# Expose the port the app runs on
EXPOSE 4000

# Command to run the application
CMD ["npm", "start"]