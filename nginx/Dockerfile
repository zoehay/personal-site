FROM nginx

ARG CONFIG_FILE

COPY ../www /var/www
COPY ../etc/nginx/${CONFIG_FILE}.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]