FROM tomcat:8.0-alpine
LABEL Owner="vishal"
#ADD C:\ProgramData\Jenkins\.jenkins\workspace\Build-Pipeline\target\roshambo-1.0-SNAPSHOT.war /usr/local/tomcat/webapps
ADD /var/lib/jenkins/workspace/build-test/target/roshambo-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps
EXPOSE 8000
CMD ["cataline.sh","run"]