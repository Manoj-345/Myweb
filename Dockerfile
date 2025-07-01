 Use Apache HTTP Server
FROM httpd:latest 

RUN sudo install httpd -y


COPY Music.html /var/www/html/index.html