# Use the official Apache image as the base image
FROM httpd:2.4

# Copy website files to the Apache document root
COPY . /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80
