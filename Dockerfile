# Use nginx image
FROM nginx:alpine

# Copy current directory to nginx HTML folder
COPY . /usr/share/nginx/html

# Expose the default web port
EXPOSE 80
