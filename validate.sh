#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# create .validator base folder
if [ ! -d "$SCRIPT_DIR/.validator" ]; then
  mkdir "$SCRIPT_DIR/.validator"
fi

# Download validator if not exists
if [ ! -f "$SCRIPT_DIR/.validator/validator_cli.jar" ]; then
  curl -L -o "$SCRIPT_DIR/.validator/validator_cli.jar" https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar
fi

# Prüfen, ob Kommandozeilenparameter übergeben wurden
if [ $# -eq 0 ]; then
  # Keine Parameter, verwende ./Beispiele/**
  PARAMS="./Beispiele/**"
else
  # Parameter wurde angegeben, verwende diese
  PARAMS="$@"
fi

PROFILES=$(echo "$SCRIPT_DIR/fsh/fsh-generated/resources/*.json" | xargs -n1 printf -- "-profile %s ")

# run validation
java -Dfile.encoding=UTF-8 -jar "$SCRIPT_DIR/.validator/validator_cli.jar" "$PARAMS" -version 4.0 -ig "$SCRIPT_DIR/fsh/fsh-generated/resources" -ig de.basisprofil.r4#1.4.0
#java -Dfile.encoding=UTF-8 -jar "$SCRIPT_DIR/.validator/validator_cli.jar" "$PARAMS" -version 4.0 -ig "$(pwd)/xml" -ig de.basisprofil.r4#1.4.0 
