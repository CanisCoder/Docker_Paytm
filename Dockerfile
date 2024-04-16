FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY recharge.html /var/www/html/
COPY movie.html /var/www/html/
COPY train.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
