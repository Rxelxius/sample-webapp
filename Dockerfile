FROM nginx:latest

# Copying to default web server directory
COPY index.html /usr/share/nginx/html/
COPY welcome.html /usr/share/nginx/html/
COPY 10-million-password-list-top-1000.txt /usr/share/nginx/html

# Install Git
RUN apt-get update && \
    apt-get install -y git
    
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]