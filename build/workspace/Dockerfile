FROM phusion/baseimage:latest

MAINTAINER Paulo Dias <prbdias@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive
RUN locale-gen en_US.UTF-8

ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LC_CTYPE=UTF-8
ENV LANG=en_US.UTF-8
ENV TERM xterm

# Install "software-properties-common" (for the "add-apt-repository")
RUN apt-get update && apt-get install -y \
    software-properties-common

# Add the "PHP 7" ppa
RUN add-apt-repository -y \
    ppa:ondrej/php

# Install PHP-CLI 5.6, some PHP extentions and some useful Tools with APT
RUN apt-get update && apt-get install -y --force-yes \
        php5.6-cli \
        php5.6-common \
        php5.6-curl \
        php5.6-json \
        php5.6-xml \
        php5.6-mbstring \
        php5.6-mcrypt \
        php5.6-mysql \
        php5.6-memcached \
        git \
        curl \
        nano \
        nodejs \
        nodejs-dev \
        npm

# Clean up, to free some space
RUN apt-get clean

# Install gulp and bower with NPM
RUN npm install -g \
    gulp \
    bower

# Add a symbolic link for Node
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Add an alias for PHPUnit
RUN echo "alias phpunit='./vendor/bin/phpunit'" >> ~/.bashrc

# Install Composer
RUN curl -s http://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/ \
    && echo "alias composer='/usr/local/bin/composer.phar'" >> ~/.bashrc

# Source the bash
RUN . ~/.bashrc

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /var/www/app