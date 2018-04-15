FROM       tomb:2.5

ARG        ELECTRUM

RUN        apk --no-cache add python3 py3-qt5 sed jq \
 &&        pip3 install https://download.electrum.org/${ELECTRUM}/Electrum-${ELECTRUM}.tar.gz