 # Use Ubuntu base image
FROM ubuntu:20.04

# Disable interactive frontend for apt
ENV DEBIAN_FRONTEND=noninteractive

# Install Apache
RUN apt update && apt install -y apache2

# Copy the HTML file into Apache's web folder
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Run Apache in foreground
CMD ["apachectl", "-D", "FOREGROUND"]
