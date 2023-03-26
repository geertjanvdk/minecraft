#!/bin/sh -x

cd /data || return
echo "eula=true" > /data/eula.txt

JAR=$(ls -1 /app/minecraft_server*.jar)
java -Xmx1G -Xms1G -jar "${JAR}" --nogui \
  --world "elfriede"
