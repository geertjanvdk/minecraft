FROM openjdk:17-jdk-alpine
ARG MCVER=1.16.5
ARG MCDOWNLOAD_URL=https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar

RUN mkdir /app
WORKDIR /app
#ADD $MCDOWNLOAD_URL /app/minecraft_server.$MCVER.jar
COPY server.jar /app/minecraft_server.$MCVER.jar

COPY start.sh .
RUN chmod +x start.sh

RUN mkdir /data
VOLUME ["/data"]
WORKDIR /data

EXPOSE 25565

ENTRYPOINT ["/app/start.sh", "$MCVER"]
