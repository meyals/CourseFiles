FROM centos:latest
MAINTAINER eyal

RUN yum -y install mc
RUN yum -y install java-1.8.0-openjdk-devel.x86_64
RUN yum -y install tomcat

COPY .bash_profile /root/.bash_profile
RUN echo "AAA=BBB" >> /root/.bash_profile
RUN source /root/.bash_profile
# for tomcat start
ENV NAME eyal 

#ADD http://search.maven.org/remotecontent?filepath=org/apache/axis3/axis2-webapp/1.7.0/axis2-webapp-1.7.0.war /usr/share/tomcat/webapps/
COPY axis2-webassp-1.7.0.war /usr/share/tomcat/webapps/

RUN mkdir /logs

