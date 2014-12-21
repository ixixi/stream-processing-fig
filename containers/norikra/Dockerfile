FROM ubuntu:14.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install build-essential curl git openjdk-7-jdk

RUN curl -L http://jruby.org.s3.amazonaws.com/downloads/1.7.16/jruby-bin-1.7.16.tar.gz | tar zxf -
ENV PATH /jruby-1.7.16/bin:$PATH

RUN gem install norikra --no-ri --no-rdoc
RUN gem install norikra-udf-percentile norikra-udf-uri_parser --no-ri --no-rdoc

RUN curl http://labs.consol.de/maven/repository/org/jolokia/jolokia-jvm/1.1.5/jolokia-jvm-1.1.5-agent.jar > /usr/local/lib/jolokia-jvm-agent.jar

# set up locale
RUN locale-gen ja_JP.UTF-8
RUN update-locale LANG=ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

EXPOSE 8778
EXPOSE 26578
EXPOSE 26571
