# Very simple dockerfile
FROM tfso/server_nodejs_dockerfile:master
RUN apt-get install -y unoconv default-jre libreoffice

