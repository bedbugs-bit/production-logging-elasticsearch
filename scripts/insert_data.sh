#!/bin/bash

curl -X POST "localhost:9200/logs_index/_bulk" -H "Content-Type: application/json" -d @data/index_data.json

# Output success message
echo "Data inserted into 'logs_index' successfully!"
