FROM mongo:3.2

VOLUME /opt/rancher/sec

ADD mongodb-keyfile /opt/rancher/sec/mongodb-keyfile
RUN chmod 600 /opt/rancher/sec/mongodb-keyfile \
 && chown root:root /opt/rancher/sec/mongodb-keyfile
