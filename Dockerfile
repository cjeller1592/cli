# Use the official image as a parent image.
FROM node:current-slim

# Set the working directory.
WORKDIR /usr/src/app

# Copy the app's source code from your host to your current location.
COPY . .

# Run the command inside your image filesystem.
RUN npm install
# RUN npm install n -g

# Add metadata to the image to describe which port the container is listening on at runtime.
EXPOSE 8080

# Run the specified command within the container.

ENTRYPOINT ["./bin/hyp.js"]