FROM tomcat:jre7-alpine
#USER tomcat
copy ./target/simple-web-app.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]