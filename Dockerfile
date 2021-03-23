FROM alpine:3.12.0

RUN apk add --no-cache \
  python \
  curl \
  which \
  bash sed \
  docker-cli

RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH $PATH:/root/google-cloud-sdk/bin

COPY buildtagpush /usr/bin
WORKDIR /workspace
ENTRYPOINT [ "/usr/bin/buildtagpush" ]
