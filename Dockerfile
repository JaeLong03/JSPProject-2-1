FROM tomcat:9.0

ADD target/JSPProject-2-1.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
