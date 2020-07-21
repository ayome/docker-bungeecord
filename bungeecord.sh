#!/bin/bash

mkdir -p /server/data

cd server

if [ ! -e BungeeCord.jar ]
  then
    wget https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar
fi

cd data

java -server -jar ../BungeeCord.jar nogui
