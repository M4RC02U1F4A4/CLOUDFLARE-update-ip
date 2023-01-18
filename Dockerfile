FROM alpine

ADD crontab.txt /crontab.txt
COPY entry.sh /entry.sh
RUN chmod 755 /entry.sh
RUN /usr/bin/crontab /crontab.txt

RUN apk update
RUN apk upgrade
RUN apk add curl

CMD ["/entry.sh"]