FROM httpd:latest
LABEL maintainer="kataya1@kataya1.com"
RUN apt update
RUN apt -y install python3
COPY hello.py /usr/local/apache2/cgi-bin
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
RUN chmod +x /usr/local/apache2/cgi-bin/hello.py
