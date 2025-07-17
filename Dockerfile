FROM debian:bookworm-slim

LABEL org.opencontainers.image.source=https://github.com/gocom/docker-image-template
LABEL org.opencontainers.image.description="Docker image template"
LABEL org.opencontainers.image.licenses=MIT

WORKDIR /app

ENV HOST_UID=1000
ENV HOST_GID=1000

ENV APP_DIRECTORY=/app
ENV APP_UID=1000
ENV APP_GID=1000
ENV APP_USER=app
ENV APP_GROUP=app

COPY --chmod=0755 ./src/bin/* /usr/local/bin/

RUN groupadd -g "$APP_GID" "$APP_GROUP" \
  && useradd -m -u "$APP_UID" -g "$APP_GROUP" "$APP_USER" \
  && chmod 777 "$APP_DIRECTORY" \
  && chown -R "$APP_USER:$APP_GROUP" "$APP_DIRECTORY"

ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
CMD ["docker-run"]
