# Redis
#
# VERSION               2.6.14

FROM        base
MAINTAINER  Gary Roberts <gary@tallstreet.com>
RUN         apt-key adv --keyserver keyserver.ubuntu.com --recv C7917B12
RUN         echo 'deb http://ppa.launchpad.net/chris-lea/redis-server/ubuntu quantal main' > /etc/apt/sources.list.d/chris-lea.list
RUN         apt-get update
RUN         apt-get install redis-server -y || true
ADD         redis.conf /etc/redis/redis.conf
EXPOSE      6379:6379
ENTRYPOINT  ["/usr/bin/redis-server"]
CMD         ["/etc/redis/redis.conf"]