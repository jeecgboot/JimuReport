FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER jeecgos@163.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /jimureport

WORKDIR /jimureport

EXPOSE 8085

ADD ./target/jimureport-demo-1.2.0.jar ./

CMD sleep 30;java -DMYSQL-HOST=jimureport-mysql -Dfile.encoding=utf-8 -Djava.security.egd=file:/dev/./urandom -jar jimureport-demo-1.2.0.jar