FROM       tomb:2.5

ARG        ELECTRUM
ARG        KEY=2BD5824B7F9470E6

RUN        mv /usr/local/bin/tomb /usr/local/bin/tomb-client \
 &&        mkdir -p /var/run/electrum ~/.electrum/wallets

COPY       bin /usr/local/bin
COPY       lib /usr/local/lib

RUN        chmod +x    /usr/local/bin/* \
 &&        chmod +x -R /usr/local/lib/electrum/*

WORKDIR    /usr/local/src

RUN        apk --no-cache add --virtual build-dependencies gnupg curl build-base python3-dev                 \
 &&        apk --no-cache add python3 py3-qt5 sed jq                                                         \
 &&        curl -L https://download.electrum.org/${ELECTRUM}/Electrum-${ELECTRUM}.tar.gz     > electrum.tgz  \
 &&        curl -L https://download.electrum.org/${ELECTRUM}/Electrum-${ELECTRUM}.tar.gz.asc > electrum.asc  \
 &&        export GNUPGHOME="`pwd`"                                                                          \
 &&        gpg --keyserver ipv4.pool.sks-keyservers.net --recv-keys "${KEY}"                                 \
 &&        gpg --batch --verify electrum.asc electrum.tgz                                                    \
 &&        pip3 install electrum.tgz --no-cache-dir                                                          \
 &&        rm -rf *                                                                                          \
 &&        apk del --force-broken-world build-dependencies

WORKDIR    /mnt/tomb
