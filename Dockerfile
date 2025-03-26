# Use a lightweight Nginx web server image
FROM nginx:alpine

# Remove default files
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html (this is what users will see)
COPY index.html /usr/share/nginx/html/index.html

# Expose the default port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
