#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
PUBLISHER_DIR=$SCRIPT_DIR/.libs
PUBLISHER_JAR=$PUBLISHER_DIR/publisher.jar
FSH_DIR=$SCRIPT_DIR/../fsh
OUTPUT_DIR=$FSH_DIR/output

# create .validator base folder
if [ ! -d "$PUBLISHER_DIR" ]; then
  mkdir "$PUBLISHER_DIR"
fi

# Download publisher.jar if not exists
if [ ! -f "$PUBLISHER_JAR" ]; then
  echo "download publisher.jar"
  wget --no-verbose -O "$PUBLISHER_JAR" https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar
fi

if [ -d "$OUTPUT_DIR" ]; then
  rm -rf "$OUTPUT_DIR"
fi

cd $FSH_DIR

# run 
java -Xms3550m -Xmx3550m -jar "$PUBLISHER_JAR" -ig "ig.ini"