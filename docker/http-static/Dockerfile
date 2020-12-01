FROM nginx

LABEL org.opencontainers.image.source https://github.com/tabjy/packages/tree/master/docker/http-static

EXPOSE 80

ENV DEBIAN_FRONTEND=noninteractive

ADD class-setup.php.patch class-setup.php.patch

RUN apt update \
    && apt install -y php7.3-fpm php7.3-json supervisor wget unzip patch

RUN wget https://release.larsjung.de/h5ai/h5ai-0.29.2.zip \
    && unzip h5ai-0.29.2.zip -d /usr/share/nginx/html \
    && chmod 775 /usr/share/nginx/html/_h5ai/private/cache \
    && patch /usr/share/nginx/html/_h5ai/private/php/core/class-setup.php /class-setup.php.patch \
    && rm h5ai-0.29.2.zip \
    && rm class-setup.php.patch \
    && mkdir -p /run/php \
    && usermod -aG www-data nginx \
    && sed -i 's/www-data/root/g' /etc/php/7.3/fpm/pool.d/www.conf

RUN apt purge -y unzip patch wget \
    && apt clean

ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD options.json /usr/share/nginx/html/_h5ai/private/conf/options.json

CMD supervisord -c /etc/supervisor/conf.d/supervisord.conf
