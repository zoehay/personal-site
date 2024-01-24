FROM nginx

COPY ../www /var/www
COPY ../etc/nginx/localnginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]