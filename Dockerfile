FROM tomcat
COPY target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
PORT 8080
