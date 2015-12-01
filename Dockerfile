# Very simple dockerfile
FROM debian:latest
RUN apt-get update && apt-get install -y nodejs npm unoconv default-jre libreoffice-writer \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*