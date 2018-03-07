FROM tomcat
MAINTAINER Kiet T. Tran
ADD target/petclinic.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
EXPOSE 8080
