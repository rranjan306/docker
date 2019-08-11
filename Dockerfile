
# Base Image for Ubuntu
FROM ubuntu

RUN apt-get update
RUN apt-get -y install apache2

ADD . /var/www/server

CMD apachectl -D FOREGROUND

ENV MY_PHONE_NUMBER 8871832400
