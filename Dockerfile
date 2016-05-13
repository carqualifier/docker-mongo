FROM mongo:3.2

ADD mongodb-keyfile /usr/share/mongodb-keyfile
RUN chmod 600 /usr/share/mongodb-keyfile \
 && chown root:root /usr/share/mongodb-keyfile
