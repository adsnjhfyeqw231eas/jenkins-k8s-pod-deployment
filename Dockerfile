FROM ubuntu
MAINTAINER  devops <devops@devopsteam.com>
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone--to remove the regions selection from screen
RUN apt-get update
RUN apt-cache search apache2
RUN apt-get -y install apache2
RUN echo 'Hello Apache server on Ubuntu Docker' > /var/www/html/index.html
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND

