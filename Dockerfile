FROM alpine:latest

MAINTAINER Arthur Kappes <artkappes@gmail.com>

RUN apk add --update bash findutils gzip postgresql-client && \
    rm -rf /var/cache/apk/*

COPY commands /commands

RUN chmod +x commands/*

ENTRYPOINT ["/commands/entry.sh"]

CMD ["helper"]
