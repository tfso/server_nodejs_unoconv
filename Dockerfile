# Very simple dockerfile
FROM ubuntu:latest
RUN echo "deb http://us-west-2.ec2.archive.ubuntu.com/ubuntu/ trusty multiverse && \
deb http://us-west-2.ec2.archive.ubuntu.com/ubuntu/ trusty-updates multiverse && \
deb http://us-west-2.ec2.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse" | tee /etc/apt/sources.list.d/multiverse.list 
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN apt-get update && apt-get install -y nodejs npm unoconv default-jre libreoffice-writer ttf-mscorefonts-installer \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
