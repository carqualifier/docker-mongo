FROM fbrbovic/alpine-multi-confd

ADD ./conf.d /etc/confd/conf.d
ADD ./templates /etc/confd/templates
ADD ./run.sh /opt/rancher/bin/run.sh

RUN chmod 775 /opt/rancher/bin/run.sh

VOLUME /data/confd

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk upgrade --update && \
    apk add mongodb@testing

ENV S3_BUCKET_NAME docker-backups.example.com
ENV AWS_ACCESS_KEY_ID **DefineMe**
ENV AWS_SECRET_ACCESS_KEY **DefineMe**
ENV AWS_DEFAULT_REGION us-east-1
ENV PATHS_TO_BACKUP ${CRONUSR_HOME}/backup
ENV BACKUP_NAME backup
ENV RESTORE false

CMD /opt/rancher/bin/run.sh
