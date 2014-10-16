FROM cjhardekopf/confd
MAINTAINER Chris Hardekopf <cjh@ygdrasill.com>

# Install influxdb package
ADD http://s3.amazonaws.com/influxdb/influxdb_latest_amd64.deb /tmp/
RUN dpkg --install /tmp/influxdb_latest_amd64.deb && \
	rm /tmp/influxdb_latest_amd64.deb
# The lastest influxdb is now available in /opt/influxdb/current/

# Set up confd configuration
ADD influxdb.toml.tmpl /etc/confd/templates/
ADD influxdb.toml /etc/confd/conf.d/

# Set up supervisor configuration
ADD influxdb.conf /etc/supervisor/conf.d/

# Data is stored in /data (/data/raft, /data/db, /data/wal)
VOLUME [ "/data" ]

# Expose public ports (admin, http API, https API)
EXPOSE 8083 8086 8084

# Expose graphite API port
EXPOSE 2003 2003/udp

# raft and protobuf ports (clustering)
# EXPOSE 8090 8099


