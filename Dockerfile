# Very simple dockerfile
FROM tfso/server_nodejs_dockerfile
RUN apt-get install -y unoconv
RUN apt-get install -y default-jre
RUN apt-get install -y libreoffice

