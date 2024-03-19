# Use the official Node.js image as the base image
FROM node:latest AS builder

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code to the working directory
COPY . .

# Build the Next.js application
RUN npm run build

FROM node:latest
WORKDIR /usr/src/app

# Copy the built artifacts from the previous stage
COPY --from=builder /usr/src/app/.next ./.next
COPY --from=builder /usr/src/app/node_modules ./node_modules
COPY --from=builder /usr/src/app/package.json ./package.json


# Expose the port Next.js is running on
EXPOSE 3000

# Set the command to run the application
CMD ["npm", "start"]
