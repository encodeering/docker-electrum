## Automatically created docker image for electrum

[![Build Status](https://travis-ci.org/encodeering/docker-electrum.svg?branch=master)](https://travis-ci.org/encodeering/docker-electrum)

### Docker

- https://hub.docker.com/r/encodeering/electrum-armhf/

    ```docker pull encodeering/electrum-armhf:3.3-alpine```

- https://hub.docker.com/r/encodeering/electrum-amd64/

    ```docker pull encodeering/electrum-amd64:3.3-alpine```

### Utility

```bash
# armhf
electrum () { docker run -it --privileged -v `pwd`:/mnt/tomb encodeering/electrum-armhf:3.3-alpine "$@"; }
```

```bash
# amd64
electrum () { docker run -it --privileged -v `pwd`:/mnt/tomb encodeering/electrum-amd64:3.3-alpine "$@"; }
```

### Notice

Please make sure that you've implemented a backup strategy prior of using this image, as more things can go wrong
when using encrypted data containers.

You may find the following links interesting

* https://www.gomindsight.com/blog/5-must-haves-data-backup-strategy/
* http://www.channelfutures.com/industry-perspectives/step-step-guide-backup-strategy-small-business
