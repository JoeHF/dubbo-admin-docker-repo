FROM centos:7
MAINTAINER houfang houfangcq@gmail.com

COPY ./incubator-dubbo-ops-develop.zip /usr/local
COPY ./apache-maven-3.5.4-bin.tar.gz /usr/local
COPY ./jdk-8u181-linux-x64.tar.gz /usr/local
COPY ./zookeeper-3.4.13.tar.gz /usr/local


ENV JAVA_HOME /usr/local/jdk1.8.0_181
ENV MAVEN_HOME /usr/local/apache-maven-3.5.4
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

ENV PATH $PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin

RUN yum -y install unzip \
    && cd /usr/local \
    && tar -zxf apache-maven-3.5.4-bin.tar.gz \
    && tar -zxf jdk-8u181-linux-x64.tar.gz \
    && tar -zxf zookeeper-3.4.13.tar.gz \
    && unzip incubator-dubbo-ops-develop.zip -d dubbo-ops > /dev/null 2>&1 \
    && cd dubbo-ops/incubator-dubbo-ops-develop \
    && ls \
    && mvn clean install

CMD cd /usr/local/zookeeper-3.4.13/bin && ./zkServer.sh start && cd /usr/local/dubbo-ops/incubator-dubbo-ops-develop && mvn --projects dubbo-admin-backend spring-boot:run

EXPOSE 8080
EXPOSE 2181
