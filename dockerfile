FROM tomcat:9.0.82-jre17
COPY target/ABC*.war /usr/local/tomcat/webapps/ABC*.war
