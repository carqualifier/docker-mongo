FROM fbrbovic/alpine-multi-confd

ADD ./conf.d /etc/confd/conf.d
ADD ./templates /etc/confd/templates
ADD ./run.sh /opt/rancher/bin

VOLUME /data/confd

RUN \
  echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
  apk update && apk upgrade && apk add bash curl mongodb && \

CMD /opt/rancher/bin/run.sh
