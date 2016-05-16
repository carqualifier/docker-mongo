FROM mongo:3.2

ENV MONGODB_KEYFILE "[KEY]"

RUN mkdir -p /opt/rancher/sec \
  && cat $MONGODB_KEYFILE > /opt/rancher/sec/mongodb-keyfile \
  && chmod 600 /opt/rancher/sec/mongodb-keyfile \
  && chown root:root /opt/rancher/sec/mongodb-keyfile
