FROM tripviss/image-resizer

COPY docker-healthcheck /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-healthcheck

HEALTHCHECK CMD ["docker-healthcheck"]

COPY docker-start /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-start

CMD ["docker-start"]
