FROM ubuntu:18.04
RUN apt-get update && apt-get install apache2 -y
ADD ./app.tgz /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
