FROM lsiobase/xenial
MAINTAINER theit8514

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && \
  apt-get install -yq --no-install-recommends rsync && \
  apt-get clean autoclean && \
  apt-get autoremove -y && \
  rm -rf /var/lib/{apt,dpkg,cache,log}/

EXPOSE 873
VOLUME /volume

COPY root/ /
