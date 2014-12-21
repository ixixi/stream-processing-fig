FROM ruby:2.1.4

RUN gem install fluentd fluent-plugin-elasticsearch fluent-plugin-forest fluent-plugin-norikra fluent-plugin-flatten-hash fluent-plugin-twitter
RUN gem install specific_install
RUN gem specific_install -l 'https://github.com/ixixi/fluent-plugin-docker-metrics.git'
RUN gem specific_install -l 'https://github.com/lburgazzoli/lb-fluent-plugin-jolokia.git'

# timezone
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

CMD ["/usr/bin/supervisord -n"]

