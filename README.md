docker-influxdb
===============

InfluxDB time series database. This image uses the *cjhardekopf/confd* base image to configure influxdb using confd. Keys for the configuration are as follows:
* hostname - hostname for clustering
* ssl-cert - name of an ssl cert file (enables the ssl api server)
* seed-servers - comma separated list of names for seed servers of the cluster
