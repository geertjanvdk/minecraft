FROM openjdk:17-jdk-alpine
ARG MCVER=1.18.2
# https://www.minecraft.net/en-us/download/server
ARG MCDOWNLOAD_URL=https://launcher.mojang.com/v1/objects/125e5adf40c659fd3bce3e66e67a16bb49ecc1b9/server.jar

RUN mkdir /app
WORKDIR /app
ADD $MCDOWNLOAD_URL /app/minecraft_server.${MCVER}.jar

COPY start.sh minecraft_1.18
RUN chmod +x minecraft_1.18

RUN mkdir /data
VOLUME ["/data"]
WORKDIR /data

EXPOSE 25565

ENTRYPOINT ["/app/minecraft_1.18"]
