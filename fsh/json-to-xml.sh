#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
JSON_DIR=$SCRIPT_DIR/fsh-generated/resources
XML_DIR=$SCRIPT_DIR/fsh-generated/xml

# create .validator base folder
if [ ! -d "$XML_DIR" ]; then
  mkdir "$XML_DIR"
fi

for file in "$JSON_DIR"
do
  filename=$(basename "$file" .json)
  hapi-fhir-cli convert-resource-format -i "$file" -o "$XML_DIR/${filename}.xml"
done