# docker-redis

Sets up a container with redis installed listening on port 6379.

## Usage

To run the container, do the following:

```
docker run -d gary/redis
docker ps
ID                  IMAGE               COMMAND                CREATED             STATUS              PORTS
a287b0f83bc8        gary/redis:latest   /usr/bin/redis-serve   16 minutes ago      Up 16 minutes       6379->6379
```

Your redis instance is now available.

## Building

To build the image, simply invoke

```
docker build github.com/tallstreet/docker-redis
```

A prebuilt container is also available in the docker index

```
docker pull gary/redis
```

## Author

Gary (<gary@tallstreet.com>)
