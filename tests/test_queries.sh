#!/bin/bash

# Test the unoptimized search query
echo "Running unoptimized search query..."
curl -X GET "localhost:9200/logs_index/_search" -H 'Content-Type: application/json' -d @queries/search_logs_query.json

# Test the optimized search query
echo "Running optimized search query..."
curl -X GET "localhost:9200/logs_index/_search" -H 'Content-Type: application/json' -d @queries/search_logs_optimized_query.json
