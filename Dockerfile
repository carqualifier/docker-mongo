FROM fbrbovic/alpine-multi-confd

ADD ./conf.d /etc/confd/conf.d
ADD ./templates /etc/confd/templates
ADD ./run.sh /opt/rancher/bin

VOLUME /data/confd

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk upgrade --update && \
    apk add mongodb@testing

CMD /opt/rancher/bin/run.sh
