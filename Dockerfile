FROM cyberpearuk/nginx-proxy-docker

ADD network_internal.conf /etc/nginx/network_internal.conf

ADD entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh
ENTRYPOINT  ["/app/entrypoint.sh"]

CMD ["forego", "start", "-r"]
