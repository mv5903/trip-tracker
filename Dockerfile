# Use Node.js as the base image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy the rest of the app
COPY . .

# Build the app
RUN yarn build

# Expose port and run the app
EXPOSE 3000
CMD ["yarn", "start"]