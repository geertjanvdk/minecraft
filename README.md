
Build
-----

1. `cd 1.19`
2. `docker build -t minecraft:1.19 .`

Run
---

Start a Minecraft server:

```
mkdir $(pwd)/data119

docker run -it
    --mount type=bind,source=$(pwd)/data119,target=/data \
    -p 25565:25565 --name minecraft119 \
    minecraft:1.19
```

Update
------

In the `Dockerfile` there is a `MCDOWNLOAD_URL` variable which must point to
the download of the Minecraft version. The `MCVER` must reflect the version of
the to be downloaded JAR-file.
