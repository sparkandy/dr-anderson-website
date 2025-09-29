# Use the official nginx image as the base
FROM nginx:alpine

# Copy the HTML files to nginx html directory
COPY index.html /usr/share/nginx/html/index.html
COPY the-gift.html /usr/share/nginx/html/the-gift.html

# Copy the images directory
COPY images/ /usr/share/nginx/html/images/

# Expose port 80
EXPOSE 80

# Copy the HTML file into the nginx html directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
