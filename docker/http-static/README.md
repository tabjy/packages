# [ghcr.io/tabjy/http-static](https://github.com/users/tabjy/packages/container/package/http-static)

a basic HTTP server for serving static file based on [h5ai](https://github.com/lrsjng/h5ai)

## Pull Image

From the container registry:

```sh
docker pull ghcr.io/tabjy/http-server:latest
```

## Usages

```sh
docker run --rm -it --network=host -v $PWD:/usr/share/nginx/html/data/:ro ghcr.io/tabjy/http-static
```

Now, with your favourite browser, open [http://localhost:8080/](http://localhost:8080/).