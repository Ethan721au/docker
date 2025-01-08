FROM node:20.14.0-alpine

# Copy package files and install dependencies
COPY package.json package-lock.json /
RUN npm install

# Copy the application source code
COPY src /src

# Set the working directory
WORKDIR /

# Build the Next.js app
RUN npm run build

# Expose the default Next.js port
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "run", "start"]