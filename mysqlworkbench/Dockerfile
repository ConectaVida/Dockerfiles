#
# Mysql Workbench Dockerfile
#
# https://github.com/rzani/Dockerfiles
#

FROM ubuntu:14.04

MAINTAINER Rodrigo Zani <rodrigo.zhs@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install -y wget

RUN wget http://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community-6.2.2-1ubu1404-amd64.deb && \
	dpkg -i --force-depends mysql-workbench-community-6.2.2-1ubu1404-amd64.deb && \
	apt-get -f -y install

# Remove cache and packages lists to save disk	
RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/* mysql-workbench-community-6.2.4-1ubu1404-amd64.deb && \
	apt-get purge -y wget

# Create 'nonroot' user to run firefox
RUN /usr/sbin/useradd --password nonroot --create-home --home-dir /home/nonroot --shell /bin/bash nonroot 

USER nonroot

CMD /usr/bin/mysql-workbench