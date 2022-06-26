FROM vicenterusso/nginx-php:base

# # Configure nginx
COPY config/nginx.conf /etc/nginx/nginx.conf

# # Configure PHP-FPM
# COPY config/fpm-pool.conf /usr/local/etc/php-fpm.d/www.conf
# COPY config/php.ini /usr/local/etc/php/conf.d/custom.ini

COPY src /var/www/html
RUN mkdir /var/run/php
EXPOSE 80

CMD ["/bin/bash", "-c", "php-fpm7 && nginx -g 'daemon off;'"]

#CMD ["/bin/bash", "-c", "php-fpm7 && chmod 777 /var/run/php/php7-fpm.sock && chmod 755 /var/www/html/* && nginx -g 'daemon off;'"]
