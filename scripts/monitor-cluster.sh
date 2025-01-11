#!/bin/bash

# This script is used to monitor the cluster status

ELASTIC_URL="http://localhost:9200"
USER="elastic"
PASSWORD="changeme"

echo "Checking Cluster Health..."
curl -u $USER:$PASSWORD -X GET "$ELASTIC_URL/_cluster/health?pretty"

echo "Fetching Node Stats..."
curl -u $USER:$PASSWORD -X GET "$ELASTIC_URL/_nodes/stats?pretty"

echo "Fetching Indices Stats..."
curl -u $USER:$PASSWORD -X GET "$ELASTIC_URL/_stats?pretty"
