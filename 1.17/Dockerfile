FROM openjdk:17-jdk-alpine
ARG MCVER=1.17.1
# https://www.minecraft.net/en-us/download/server
ARG MCDOWNLOAD_URL=https://launcher.mojang.com/v1/objects/a16d67e5807f57fc4e550299cf20226194497dc2/server.jar

RUN mkdir /app
WORKDIR /app
ADD $MCDOWNLOAD_URL /app/minecraft_server.${MCVER}.jar
#COPY server.jar /app/minecraft_server.$MCVER.jar

COPY start.sh minecraft_1.17
RUN chmod +x minecraft_1.17

RUN mkdir /data
VOLUME ["/data"]
WORKDIR /data

EXPOSE 25565

ENTRYPOINT ["/app/minecraft_1.17"]
