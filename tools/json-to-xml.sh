#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SCRIPT_NAME=$(basename "$0")
JSON_DIR=$(pwd)/$1
XML_DIR=$(pwd)/$2

if [ $# -lt 2 ]; then
  echo "Aufruf: $SCRIPT_NAME JSON_VERZEICHNIS XML_VERZEICHNIS"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Parameter 1 ist kein Verzeichnis oder existiert nicht."
  exit 1
fi

# create .validator base folder
if [ ! -d "$XML_DIR" ]; then
  mkdir "$XML_DIR"
fi

for file in "$JSON_DIR"
do
  filename=$(basename "$file" .json)
  hapi-fhir-cli convert-resource-format -i "$file" -o "$XML_DIR/${filename}.xml"
done