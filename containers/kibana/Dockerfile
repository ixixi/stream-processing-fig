# from https://github.com/arcus-io/docker-kibana.git
FROM java:8

RUN apt-get update -y
RUN apt-get install -y nginx-full wget

RUN mkdir /kibana \
 && curl -sL "https://download.elasticsearch.org/kibana/kibana/kibana-4.0.0-beta3.tar.gz" | tar xz -C /kibana --strip=1

EXPOSE 5601

CMD ["/kibana/bin/kibana"]
