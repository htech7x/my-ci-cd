# Use the official Nginx base image from Docker Hub
FROM nginx:latest

# Copy custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static website files to the container (if needed)
# COPY static-html-directory /usr/share/nginx/html

# Expose the port on which Nginx will listen
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
