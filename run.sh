  #!/bin/ash

if [ ! -f /data/mongodb-keyfile ]
then
  openssl rand -base64 741 > /data/mongodb-keyfile
fi
