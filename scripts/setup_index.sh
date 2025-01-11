#!/bin/bash

# Create the index with the mapping from the 'create_log_index_mapping.json' file
curl -u elastic:changeme -X PUT "localhost:9200/webapp-logs?pretty" -H 'Content-Type: application/json' -d @migrations/setup-indexes.json

# Output success message
echo "Index 'logs_index' created successfully!"
