FROM openjdk:21-jdk-slim-bullseye
ARG MCVER=1.19.4
# https://www.minecraft.net/en-us/download/server
ARG MCDOWNLOAD_URL=https://piston-data.mojang.com/v1/objects/8f3112a1049751cc472ec13e397eade5336ca7ae/server.jar

RUN mkdir /app
WORKDIR /app
ADD $MCDOWNLOAD_URL /app/minecraft_server.${MCVER}.jar

COPY start.sh minecraft
RUN chmod +x minecraft

RUN mkdir /data
VOLUME ["/data"]
WORKDIR /data

EXPOSE 25565

CMD ["/app/minecraft"]
