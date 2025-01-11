#!/bin/bash

curl -u elastic:changeme -X DELETE "http://localhost:9200/webapp-logs?pretty"
