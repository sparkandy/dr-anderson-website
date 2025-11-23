# Use the official nginx image as the base
FROM nginx:alpine

# Copy all HTML files to nginx html directory
COPY *.html /usr/share/nginx/html/

# Copy SEO files
COPY sitemap.xml /usr/share/nginx/html/
COPY robots.txt /usr/share/nginx/html/

# Copy all image files
COPY *.jpg /usr/share/nginx/html/
COPY *.png /usr/share/nginx/html/

# Copy the images directory
COPY images/ /usr/share/nginx/html/images/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
