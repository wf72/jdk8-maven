FROM maven:3-openjdk-8

ENV TZ=Europe/Moscow
RUN apt-get update && \
    apt-get install -y tzdata zip unzip && \
    rm -rf /var/lib/apt/lists/* && \
    cp /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
