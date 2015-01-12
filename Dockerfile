# modified from Sendgrid Labs' fantastic (Loggly container example)[https://github.com/sendgridlabs/loggly-docker]

FROM ubuntu:trusty
MAINTAINER Shawn Drape <shawn@dra.pe>

RUN apt-get update
RUN apt-get -y dist-upgrade

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ADD 50-default.conf /etc/rsyslog.d/50-default.conf

EXPOSE 514
EXPOSE 514/udp

CMD ["/tmp/run.sh"]

