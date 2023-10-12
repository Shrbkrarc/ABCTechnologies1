FROM docker.io/library/ubuntu:18.04
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-11-jdk wget
RUN mkdir /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.94/bin/apache-tomcat-8.5.94.tar.gz /tmp/apache-tomcat-8.5.94.tar.gz
RUN cd/tmp/ && tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.94/* /opt/tomcat/.
WORKDIR /opt/tomcat/webapps
ADD **/*.war /opt/tomcat/webapps
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
