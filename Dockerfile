FROM nginx:1.21

COPY 40-generate-cert.sh /docker-entrypoint.d/
COPY nginx.conf /etc/nginx/

RUN chmod +x /docker-entrypoint.d/*.sh
RUN /docker-entrypoint.d/40-generate-cert.sh
RUN mkdir -p /var/www/nginx/errors
COPY 404.html /var/www/nginx/errors

ENV NGINX_ENTRYPOINT_QUIET_LOGS=1
