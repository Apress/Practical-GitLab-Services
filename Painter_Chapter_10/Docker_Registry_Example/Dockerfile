FROM bash:5.2-alpine3.17

RUN  apk update \
  && apk upgrade \
  && apk add ca-certificates \
  && update-ca-certificates \
  && apk add --update util-linux tzdata curl unzip git vim \
  && apk add --update openjdk17 \
  && apk add --update maven \
  && rm -rf /var/cache/apk/*

RUN ln -s /usr/local/bin/bash /bin/bash