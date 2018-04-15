#!/usr/bin/env bash

set -e

import com.encodeering.ci.config
import com.encodeering.ci.docker

docker-pull "$REPOSITORY/tomb-$ARCH:2.5-alpine" "tomb:2.5"

docker-build --build-arg ELECTRUM=$PIN alpine

docker-verify-config "--entrypoint electrum"
docker-verify version
