FROM alpine:3.12.0

RUN apk add --no-cache \
  curl \
  which \
  bash sed \
  docker-cli

RUN apk --no-cache add python2 
RUN curl -sSL https://sdk.cloud.google.com | bash 
RUN apk del python2 && apk --no-cache add python3

ENV PATH $PATH:/root/google-cloud-sdk/bin

COPY buildtagpush /usr/bin
WORKDIR /workspace
ENTRYPOINT [ "/usr/bin/buildtagpush" ]
