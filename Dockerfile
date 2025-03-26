# Use a lightweight web server base image
FROM nginx:alpine

# Remove default Nginx HTML content
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file into the correct location
COPY home.html /usr/share/nginx/html/index.html

# Tell Render to expose port 80
EXPOSE 80

# Start Nginx when container starts
CMD ["nginx", "-g", "daemon off;"]
