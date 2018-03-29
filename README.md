# CS:GO on Docker
This Dockerfile creates the CSGO server. The base image is the [SteamCMD](https://github.com/fooock/steamcmd)

> Important! If you build this image be patient, because the total size is around 16GB

## Build

To create the image just run

```bash
docker build -t csgo --build-arg key=$CSGO_KEY .
```

> **Warning:** It is not recommended to use build-time variables for passing secrets like github keys, user credentials etc. Build-time variable values are visible to any user of the image with the docker history command.

This process can take a while. When the process is finished, check your images

```bash
docker images
```

If all is ok, then we can see it

```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
csgoserver          latest              b3ec8c1ed67e        7 months ago        16.2GB
steamcmd            latest              b012efacb4f6        7 months ago        294MB
```