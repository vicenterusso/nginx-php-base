FROM alpine:3.15

RUN apk update && apk upgrade
RUN apk add bash
RUN apk add git
RUN apk add nginx

RUN apk --no-cache \
      add php7 \
      php7-fpm \
      php7-opcache \
      php7-mysqli \
      php7-json \
      php7-openssl \
      php7-curl \
      php7-zlib \
      php7-xml \
      php7-phar \
      php7-intl \
      php7-dom \
      php7-xmlreader \
      php7-ctype \
      php7-session \
      php7-mbstring \
      php7-gd \
      php7-pecl-redis \
      php7-pecl-mongodb \
      curl

# Install Composer
RUN curl -LO "https://getcomposer.org/download/1.10.26/composer.phar" && chmod +x composer.phar && mv composer.phar /usr/local/bin/composer
