FROM phusion/baseimage:0.9.15
MAINTAINER Create Digital <hello@createdigital.me>

ENV HOME /root
CMD ["/sbin/my_init"]

RUN apt-get update -qy && apt-get upgrade -y
RUN apt-get install -qy unzip software-properties-common sudo python-pip git python-dev libxml2-dev libxslt-dev lib32z1-dev libpq-dev libjpeg8 libjpeg8-dev

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
