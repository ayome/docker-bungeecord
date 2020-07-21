FROM openjdk:11.0-jre-slim

ADD bungeecord.sh .
RUN apt-get update \
    && apt-get install -y wget \
    && rm -rf /var/lib/apt/lists/*

CMD ["sh", "./bungeecord.sh"]

EXPOSE 25577/tcp
EXPOSE 25577/udp
VOLUME /server/data
