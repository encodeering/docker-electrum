FROM       tomb:2.5

ARG        ELECTRUM

WORKDIR    /usr/local/bin

COPY       bin .

RUN        chmod +x *

RUN        mkdir -p /var/run/electrum

RUN        apk --no-cache add python3 py3-qt5 sed jq \
 &&        pip3 install https://download.electrum.org/${ELECTRUM}/Electrum-${ELECTRUM}.tar.gz

WORKDIR    /mnt/tomb
