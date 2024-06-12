FROM ubuntu
RUN apt update
RUN apt install -y nginx
RUN rm -f /etc/nginx/sites-enabled/default
COPY default /etc/nginx/sites-enabled/default
COPY 22.txt /var/www/html/22.txt
COPY 33.txt /var/www/html/33.txt
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
