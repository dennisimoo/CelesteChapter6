# Use Nginx as the base image
FROM nginx:alpine

# Remove default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy index.html (the page users see)
COPY index.html /usr/share/nginx/html/index.html

# Copy the downloadable file
COPY home.html /usr/share/nginx/html/home.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
