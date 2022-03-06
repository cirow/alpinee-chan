FROM alpine
RUN apk add nginx nginx-mod-http-nchan gettext curl

RUN mkdir /etc/nginx/conf.d
COPY ./confs/nginx.conf /etc/nginx
COPY ./confs/modules.conf /etc/nginx
COPY ./confs/default.conf.template /etc/nginx/conf.d/
COPY ./docker-entrypoint.sh /


ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
