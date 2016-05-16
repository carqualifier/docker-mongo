FROM mongo:3.2

ENV MONGODB_KEYFILE "CONTENTS"

RUN mkdir -p /opt/rancher/sec && mkdir -p /opt/rancher/bin \
  && echo $MONGODB_KEYFILE > /opt/rancher/sec/mongodb-keyfile \
  && chmod 600 /opt/rancher/sec/mongodb-keyfile \
  && chown root:root /opt/rancher/sec/mongodb-keyfile

ADD run.sh /opt/rancher/bin/run.sh
RUN chmod u+x /opt/rancher/bin/run.sh
