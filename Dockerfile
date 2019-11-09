FROM ubuntu:16.04
MAINTAINER hksong <thdgyrms36@gmail.com>
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/ngnix
VOLUME ["/data", "/etc/nginx/site-enabled", "/var/log/nginx"]
CMD ["nginx"]
EXPOSE 80
EXPOSE 443
