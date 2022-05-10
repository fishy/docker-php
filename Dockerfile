FROM php:7.4-fpm

# RUN apt-get update && apt-get install -y \
# 		libfreetype6-dev \
# 		libjpeg62-turbo-dev \
# 		libpng-dev \
# 	&& docker-php-ext-configure mysqli --with-freetype --with-jpeg \
# 	&& docker-php-ext-install -j$(nproc) gd

RUN docker-php-ext-configure mysqli \
	&& docker-php-ext-install -j$(nproc) mysqli
