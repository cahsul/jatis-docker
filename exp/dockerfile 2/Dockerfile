# docker run -it --name aaa -v //d:/var/www/html/ -p 9999:80  -d test /bin/bash
# docker run -ti -d --name aaa -p 9999:80 test httpd -D FOREGROUND
# docker exec -it aaa /bin/bash
# docker run -ti -d --name aaa -p 9999:80 test /bin/bash

FROM centos:6.6

COPY ./install.sh /home

RUN /home/install.sh

COPY run-httpd /usr/local/bin/
RUN chmod -v +x /usr/local/bin/run-httpd
EXPOSE 80

RUN dos2unix /usr/local/bin/run-httpd
CMD ["/usr/local/bin/run-httpd"]


