FROM mysql:8.0.19

MAINTAINER jeecgos@163.com

ENV TZ=Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./1jimureport.mysql5.7.create.sql /docker-entrypoint-initdb.d

COPY ./2jimureport-dict.mysql5.7.create.sql /docker-entrypoint-initdb.d