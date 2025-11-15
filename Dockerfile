FROM tomcat:9.0

ADD target/*.war /usr/local/tomcat/webapps/

RUN mv /usr/local/tomcat/webapps/app.war /usr/local/tomcat/webapps/root.war

CMD ["catalina.sh", "run"]
