# Use the official Nginx image as the base image
FROM nginx:latest

# Set the maintainer label
LABEL maintainer="your-email@example.com"

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Clone the repository and copy the content into the Nginx directory
RUN apt-get update && apt-get install -y git \
    && git clone https://github.com/Sameer-8080/Website-PRT-ORG.git /tmp/website \
    && cp -r /tmp/website/* /usr/share/nginx/html/

# Expose the default HTTP port
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
