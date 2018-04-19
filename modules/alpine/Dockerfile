FROM       tomb:2.5

ARG        ELECTRUM

WORKDIR    /usr/local/bin

RUN        mv tomb tomb-client \
 &&        mkdir -p /var/run/electrum ~/.electrum/wallets

COPY       bin /usr/local/bin
COPY       lib /usr/local/lib

RUN        chmod +x    /usr/local/bin/* \
 &&        chmod +x -R /usr/local/lib/electrum/*

RUN        apk --no-cache add python3 py3-qt5 sed jq \
 &&        pip3 install https://download.electrum.org/${ELECTRUM}/Electrum-${ELECTRUM}.tar.gz --no-cache-dir

WORKDIR    /mnt/tomb
