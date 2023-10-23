# [ghcr.io/tabjy/jdk11u-ci](https://github.com/users/tabjy/packages/container/package/jdk11u-ci)

a CI image with all dependencies for building/testing JDK 11

## Pull Image

From the container registry:

```sh
podman pull ghcr.io/tabjy/jdk11u-ci:latest
```

## Usages

Mount the JDK 11 source to `/app` do whatever you want

```sh
podman run -it --rm -v $PWD:/app:z localhost/jdk11u-ci:latest bash ./configure [...]
```
