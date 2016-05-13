FROM mongo:3.2

VOLUME /opt/rancher/bin

ADD run.sh /opt/rancher/bin/run.sh
RUN chmod u+x /opt/rancher/bin/run.sh \
 && /opt/rancher/bin/run.sh
