#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
JSON_DIR=$SCRIPT_DIR/input/examples

# create .validator base folder
if [ ! -d "$JSON_DIR" ]; then
  mkdir "$JSON_DIR"
fi

java -jar "$SCRIPT_DIR/../.validator/validator_cli.jar" "-convert" "-source" "$file" "-outputSuffix" .json