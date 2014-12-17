#
# ElasticSearch Dockerfile
#
# https://github.com/dockerfile/elasticsearch

FROM dockerfile/java:oracle-java7

ENV ES_PKG_NAME elasticsearch-1.4.1

RUN \
  cd / && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/$ES_PKG_NAME.tar.gz && \
  tar xvzf $ES_PKG_NAME.tar.gz && \
  rm -f $ES_PKG_NAME.tar.gz && \
  mv /$ES_PKG_NAME /elasticsearch

RUN apt-get update && apt-get install -y supervisor cron

RUN /elasticsearch/bin/plugin --install mobz/elasticsearch-head

ADD ./run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 9200
EXPOSE 9300

CMD ["/run.sh"]
