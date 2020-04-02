#
  FROM debian:buster 

#
  ENV DEBIAN_FRONTEND noninteractive
  ENV TAR_OPTIONS --no-same-owner

#
  RUN \
    apt-get update \
      && \
    apt-get install -y --no-install-recommends \
      openjdk-11-jdk cgroup-bin \
      && \
    useradd -ms /bin/bash app \
      && \
    usermod -aG sudo app

#
  USER app
  ENV USER app
  WORKDIR /home/app

#
  COPY . /home/app

#
  CMD [ "./mjava", "a.java" ]

#
  STOPSIGNAL SIGINT
