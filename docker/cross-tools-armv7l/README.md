# [ghcr.io/tabjy/cross-tools-armv7l](https://github.com/users/tabjy/packages/container/package/cross-tools-armv7l)

an ubuntu based cross-compile toolchains for ARM development (as having them available natively in ArchLinux is a whole level of pains)

## Pull Image

From the container registry:

```sh
docker pull ghcr.io/tabjy/cross-tools-armv7l:latest
```

## Usages

```sh
source <(curl https://raw.githubusercontent.com/tabjy/packages/master/docker/cross-tools-armv7l/alias.sh)
arm-linux-gnueabihf-gcc src/hello.c -o build/armv7l/helloworld
```
