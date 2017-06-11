FROM nginx:latest

MAINTAINER Paulo Dias <prbdias@gmail.com>

ADD nginx.conf /etc/nginx/
ADD site.conf /etc/nginx/sites-available/
ADD entrypoint.sh /etc/nginx/

RUN chmod +x /etc/nginx/entrypoint.sh

RUN echo "upstream php-upstream { server php-fpm:9000; }" > /etc/nginx/conf.d/upstream.conf

RUN usermod -u 1000 www-data

ENTRYPOINT ["/etc/nginx/entrypoint.sh"]

EXPOSE 80 443

