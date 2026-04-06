# Use the Nginx image as the base
FROM nginx:alpine

# Copy your HTML file to the web server directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80
