#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VALIDATOR_DIR=$SCRIPT_DIR/.validator
VALIDATOR_JAR=$VALIDATOR_DIR/validator_cli.jar

# create .validator base folder
if [ ! -d "$VALIDATOR_DIR" ]; then
  mkdir "$VALIDATOR_DIR"
fi

# Download validator if not exists
if [ ! -f "$VALIDATOR_JAR" ]; then
  echo "download validator_cli.jar"
  wget --no-verbose -O "$VALIDATOR_JAR" https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar
fi

# Prüfen, ob Kommandozeilenparameter übergeben wurden
if [ $# -eq 0 ]; then
  # Keine Parameter, verwende ./Beispiele/**
  SRC_DIR=$SCRIPT_DIR/xml/Beispiele/**
else
  # Parameter wurde angegeben, verwende diese
  SRC_DIR=$@
fi

FILES_TO_VALIDATE=$(find $SRC_DIR -type f \( -name "*.xml" \) -print0 | xargs -0 -I{} printf "\"%s\" " "{}")

# run validation
java -Dfile.encoding=UTF-8 -jar "$VALIDATOR_JAR" $FILES_TO_VALIDATE -version 4.0 -ig "$SCRIPT_DIR/fsh/output" -ig de.basisprofil.r4#1.5.4
#java -Dfile.encoding=UTF-8 -jar "$VALIDATOR_JAR" $FILES_TO_VALIDATE -version 4.0 -ig "$(pwd)/xml" -ig de.basisprofil.r4#1.4.0 
