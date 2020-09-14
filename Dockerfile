FROM nginx:1.19.2

COPY nginx.conf /etc/nginx/nginx.conf

RUN nginx -c /etc/nginx/nginx.conf -t
RUN mkdir -p /var/www

COPY build/ /var/www/

EXPOSE 3000 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
