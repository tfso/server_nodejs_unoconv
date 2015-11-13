# Very simple dockerfile
FROM debian:wheezy
RUN apt-get update && apt-get install -y nodejs npm unoconv  libreoffice-writer \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*