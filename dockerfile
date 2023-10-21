FROM docker.io/library/ubuntu:18.04
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-11-jdk wget
RUN mkdir /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.94/bin/apache-tomcat-8.5.94.tar.gz /tmp/apache-tomcat-8.5.94.tar.gz
RUN cd /tmp && tar xvfz apache-tomcat-8.5.94.tar.gz
RUN cp -R /tmp/apache-tomcat-8.5.94/* /home/edureka/tomcat/
ADD /home/edureka/workspace/ABCPrj/target/*.war /home/edureka/tomcat/webapps/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
