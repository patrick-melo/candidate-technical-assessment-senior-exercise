FROM openjdk:oraclelinux7
WORKDIR /usr/src/movie
RUN yum install -y mysql
CMD [ "sleep", "2147483647" ]