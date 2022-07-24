FROM nginx:1.21

COPY conf.d/default.conf /etc/nginx/conf.d/
COPY conf.d/upstream.conf /etc/nginx/conf.d/

RUN usermod -u 1000 www-data

EXPOSE 80
EXPOSE 443
