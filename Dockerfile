# Very simple dockerfile
FROM tfso/server_nodejs_dockerfile:master
RUN apt-get update && apt-get install -y unoconv default-jre libreoffice-core \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

