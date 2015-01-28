#docker build -t pierrotws/centos6 .
FROM scratch
MAINTAINER Pierre Sauvage<pierre@adaltas.com>

ADD full-centos6.tar.xz /
RUN yum update -y
