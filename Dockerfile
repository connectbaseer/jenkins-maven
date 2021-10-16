# Pull base image 
FROM tomcat:8.0
COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
