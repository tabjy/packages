#!/usr/sh

for TOOL in $(docker run --rm -it ghcr.io/tabjy/cross-tools-armv7l bash -c 'compgen -c | grep arm-linux-gnueabihf-')
do
    TOOL=$(echo "$TOOL" | sed 's/\x0D$//')
    eval "function $TOOL { docker run --rm -it -u \$(id -u \$USER):\$(id -g \$USER) -v /:/mnt/host -w /mnt/host\$(pwd) ghcr.io/tabjy/cross-tools-armv7l $TOOL \"\$@\"}"
done