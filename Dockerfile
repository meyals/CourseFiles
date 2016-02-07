FROM centos:latest
MAINTAINER eyal

RUN yum -y install mc
RUN yum -y install java-1.8.0-openjdk-devel.x86_64
RUN yum -y install tomcat

COPY .bash_profile /root/.bash_profile
RUN echo "AAA=BBB" >> /root/.bash_profile
RUN source /root/.bash_profile

RUN mkdir ~/logs

