
FROM nginx:1.19.6-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY common.nginx.conf /etc/nginx/conf.d

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]