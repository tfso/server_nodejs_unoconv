# Very simple dockerfile
FROM ubuntu:trusty-20151001
RUN echo "deb http://us-west-2.ec2.archive.ubuntu.com/ubuntu/ trusty multiverse \n\
deb http://us-west-2.ec2.archive.ubuntu.com/ubuntu/ trusty-updates multiverse \n\
deb http://us-west-2.ec2.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse" | tee /etc/apt/sources.list.d/multiverse.list 
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN apt-get update && apt-get install -y nodejs unzip npm wget unoconv libreoffice-writer ttf-mscorefonts-installer ghostscript libtiff-tools \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/google/fonts/archive/master.zip
RUN unzip master.zip -d /usr/share/fonts
RUN rm -rf master.zip
RUN fc-cache -f -v
