#
# Firefox Dockerfile
#
# https://github.com/rzani/Dockerfiles
#

FROM debian:wheezy

MAINTAINER Rodrigo Zani <rodrigo.zhs@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN echo 'deb http://packages.linuxmint.com debian import' >> /etc/apt/sources.list && \
	gpg --keyserver pgp.mit.edu --recv-keys 3EE67F3D0FF405B2 && \
	gpg --export 3EE67F3D0FF405B2 > 3EE67F3D0FF405B2.gpg && \
	apt-key add ./3EE67F3D0FF405B2.gpg && \
	rm ./3EE67F3D0FF405B2.gpg && \
	apt-get update

RUN	apt-get install -y libdbus-glib-1-2 firefox 

# Remove cache and packages lists to save disk	
RUN rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/apt/*

# Create 'nonroot' user to run firefox
RUN /usr/sbin/useradd --create-home --home-dir /usr/local/nonroot --shell /bin/bash nonroot 

USER nonroot

CMD /usr/bin/firefox