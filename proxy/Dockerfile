FROM      ubuntu:trusty
MAINTAINER kdlanmoon <kdlanmoon@gmail.com>

RUN echo "deb http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse" > /etc/apt/sources.list && \
      echo "deb http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse" >> /etc/apt/sources.list && \
      echo "deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse" >> /etc/apt/sources.list && \
      echo "deb http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse" >> /etc/apt/sources.list && \
      echo "deb http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse" >> /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y squid3
RUN apt-get install -y privoxy
RUN apt-get install -y python-pip
RUN pip install shadowsocks

ADD squid.conf /etc/squid3/squid.conf
ADD chinaip /etc/squid3/chinaip
ADD config /etc/privoxy/config

EXPOSE 3128
CMD  service privoxy start && /usr/sbin/squid3 && sslocal -c /etc/shadowsocks.json
