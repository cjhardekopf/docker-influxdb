docker-influxdb
===============

InfluxDB time series database. This image uses the *cjhardekopf/confd* base image to configure influxdb using confd. It expects a json string value for the key "influxdb". All of the configuration values are optional and the names are as follows:
* hostname - hostname for clustering
* ssl-cert - name of an ssl cert file (enables the ssl api server)
* seeds - comma separated list of names for seed servers of the cluster
* graphite - graphite database name
