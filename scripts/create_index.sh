#!/bin/bash

# Create the index with the mapping from the 'create_log_index_mapping.json' file
curl -X PUT "localhost:9200/logs_index" -H 'Content-Type: application/json' -d @migrations/create_log_index_mapping.json

# Output success message
echo "Index 'logs_index' created successfully!"
