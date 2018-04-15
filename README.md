## Automatically created docker image for electrum

[![Build Status](https://travis-ci.org/encodeering/docker-electrum.svg?branch=master)](https://travis-ci.org/encodeering/docker-electrum)

### Docker

- https://hub.docker.com/r/encodeering/electrum-armhf/

    ```docker pull encodeering/electrum-armhf:3.1-alpine```

- https://hub.docker.com/r/encodeering/electrum-amd64/

    ```docker pull encodeering/electrum-amd64:3.1-alpine```

### Utility

```bash
# armhf
electrum () { docker run --rm -it --privileged -v `pwd`:/mnt/tomb encodeering/electrum-armhf:3.1-alpine "$@"; }
```

```bash
# amd64
electrum () { docker run --rm -it --privileged -v `pwd`:/mnt/tomb encodeering/electrum-amd64:3.1-alpine "$@"; }
```
