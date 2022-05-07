FROM ubuntu 
RUN apt-get update
RUN DEBIAN FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install apache2
ADD . /var/www/html
ENTRYPOINT apachect1 -D FOREGROUND
