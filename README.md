# 3proxy Docker Image

[![Image Size](https://images.microbadger.com/badges/image/davojan/3proxy.svg)](https://microbadger.com/images/davojan/3proxy)
[![Docker Stars](https://img.shields.io/docker/stars/davojan/3proxy.svg)](https://hub.docker.com/r/davojan/3proxy/)
[![Docker Pulls](https://img.shields.io/docker/pulls/davojan/3proxy.svg)](https://hub.docker.com/r/davojan/3proxy/)
[![Docker Automated build](https://img.shields.io/docker/automated/davojan/3proxy.svg)](https://hub.docker.com/r/davojan/3proxy/)

Minimalistic Alpine-based 3proxy image


## Features

* Based on Alpine 3.7 with APK ``3proxy`` package version 0.8.11-r0
* Guardian process enabled with graceful shutdown
* Default configuration is adopted to docker environment:
  * Logging to stdout
  * passwd file is auto-monitored for changes


## Usage

```shell
mkdir /etc/3proxy
touch /etc/3proxy/passwd

docker run --name 3proxy \
  -p 1080:1080 -p 3128:3128 \
  -v /etc/3proxy/passwd:/etc/3proxy/passwd \
  davojan/3proxy
```

You can also add ``-v /etc/3proxy/3proxy.cfg:/etc/3proxy/3proxy.cfg`` for custom config file.
