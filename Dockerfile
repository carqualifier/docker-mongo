FROM mongo:3.2

VOLUME /opt/rancher/bin

ADD mongodb-keyfile /opt/rancher/bin/mongodb-keyfile
RUN chmod 600 /opt/rancher/bin/mongodb-keyfile \
 && chown root:root /opt/rancher/bin/mongodb-keyfile
