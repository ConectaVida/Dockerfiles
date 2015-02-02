#
# Firefox Dockerfile
#
# https://github.com/rzani/Dockerfiles
#

FROM ubuntu:14.10

MAINTAINER Rodrigo Zani <rodrigo.zhs@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install -y firefox && \
	rm -rf /var/lib/apt/lists/* 

# RUN  echo 'deb http://packages.linuxmint.com debian import' >> /etc/apt/sources.list && \
# 	gpg --keyserver pgp.mit.edu --recv-keys 3EE67F3D0FF405B2 && \
# 	gpg --export 3EE67F3D0FF405B2 > 3EE67F3D0FF405B2.gpg && \
# 	apt-key add ./3EE67F3D0FF405B2.gpg && \
# 	rm ./3EE67F3D0FF405B2.gpg && \
# 	apt-get update && \
# 	apt-get install firefox

# Replace 1000 with your user / group id
RUN export uid=1000 gid=1000 && \
    mkdir -p /home/user && \
    echo "user:x:${uid}:${gid}:User,,,:/home/user:/bin/bash" >> /etc/passwd && \
    echo "user:x:${uid}:" >> /etc/group && \
    echo "user ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/user && \
    chmod 0440 /etc/sudoers.d/user && \
    chown ${uid}:${gid} -R /home/user

USER user

ENV HOME /home/user

CMD /usr/bin/firefox