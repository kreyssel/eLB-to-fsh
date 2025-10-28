#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
PUBLISHER_DIR=$SCRIPT_DIR/.publisher
PUBLISHER_JAR=$SCRIPT_DIR/.publisher/publisher.jar
FSH_DIR=$SCRIPT_DIR/fsh
OUTPUT_DIR=$FSH_DIR/output

# create .validator base folder
if [ ! -d "$PUBLISHER_DIR" ]; then
  mkdir "$PUBLISHER_DIR"
fi

# Download validator if not exists
if [ ! -f "$PUBLISHER_JAR" ]; then
  wget --no-verbose https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -O "$PUBLISHER_JAR"
fi

if [ -d "$OUTPUT_DIR" ]; then
  rm -rf "$OUTPUT_DIR"
fi

# run 
java -Xms3550m -Xmx3550m -jar "$PUBLISHER_JAR" -ig "$FSH_DIR/ig.ini"