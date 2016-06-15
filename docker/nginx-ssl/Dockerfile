FROM nginx:1.9-alpine

RUN rm /etc/nginx/conf.d/default.conf

# persistent / runtime deps
RUN apk add --no-cache --virtual .persistent-deps \
		ca-certificates \
		curl

ENV CONFD_VERSION 0.11.0

RUN curl -fSL https://github.com/kelseyhightower/confd/releases/download/v$CONFD_VERSION/confd-$CONFD_VERSION-linux-amd64 -o /usr/local/bin/confd \
	&& chmod +x /usr/local/bin/confd

COPY confd /usr/local/etc/confd/

COPY start.sh /

CMD ["/start.sh"]
