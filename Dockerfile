FROM mongo:3.2

ADD mongodb-keyfile /root/mongodb-keyfile
RUN chmod 600 /root/mongodb-keyfile \
 && chown root:root /root/mongodb-keyfile
