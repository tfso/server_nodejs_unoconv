# Very simple dockerfile
FROM ubuntu:latest
RUN apt-get update && apt-get install -y nodejs npm unoconv default-jre libreoffice-writer ttf-mscorefonts-installer \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
