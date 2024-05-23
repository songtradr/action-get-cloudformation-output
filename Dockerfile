FROM alpine:3.19

RUN apk --no-cache add aws-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
