FROM nginx:alpine

ENV TZ=Europe/Oslo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY nginx.conf /etc/nginx/nginx.conf

COPY favicon.ico /var/www/http-error/favicon.ico
COPY maintenance.html /var/www/http-error/maintenance.html

EXPOSE 8080
