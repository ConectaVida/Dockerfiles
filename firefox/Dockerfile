#
# Firefox Dockerfile
#
# https://github.com/rzani/Dockerfiles
#

FROM ubuntu:14.10

MAINTAINER Rodrigo Zani <rodrigo.zhs@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install -y firefox

# Remove cache and packages lists to save disk	
RUN rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/apt/*

# Create 'nonroot' user to run firefox
RUN /usr/sbin/useradd --create-home --home-dir /usr/local/nonroot --shell /bin/bash nonroot 

USER nonroot

CMD /usr/bin/firefox