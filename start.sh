#!/bin/bash

echo PROMETHEUS_BEARER_TOKEN is "${PROMETHEUS_BEARER_TOKEN}"

# Replace the placeholder with the actual bearer token from the environment variable
sed -i "s/PROMETHEUS_BEARER_TOKEN/${PROMETHEUS_BEARER_TOKEN}/g" /app/prometheus.yml

cat /app/prometheus.yml

# Start Prometheus
/app/bin/prometheus --config.file=$HOME/prometheus.yml --web.enable-admin-api --web.listen-address=:$PORT
