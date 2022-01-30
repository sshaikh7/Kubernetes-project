FROM centos:latest
MAINTAINER salman
RUN yum install -y httpd \
   zip \
   unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf luxury/* .
RUN rm -rf luxury luxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
