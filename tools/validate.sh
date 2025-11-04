#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VALIDATOR_DIR=$SCRIPT_DIR/.libs
VALIDATOR_JAR=$VALIDATOR_DIR/validator_cli.jar
FSH_DIR=$SCRIPT_DIR/../fsh

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
  SRC=$SCRIPT_DIR/../xml/Beispiele/
else
  # Parameter wurde angegeben, verwende diese
  if [[ "$1" = /* ]]; then
    SRC="$1"
  else
    SRC="${PWD}/$1"
  fi
fi

if [ -f "$SRC" ]; then
  # nur eine Datei angegaben
  readarray -t files <<< "$SRC"
elif [ -d "$SRC" ]; then
  # alle zu prüfenden Dateien ermitteln
  readarray -d '' files < <(find "$SRC" -type f -name "*.xml" -print0)
else
  echo "$SRC existiert nicht als Datei oder Verzeichnis"
  exit 1
fi

# run validation

#java -Dfile.encoding=UTF-8 -jar "$VALIDATOR_JAR" "${files[@]}" -watch-mode single -version 4.0 -ig "$FSH_DIR/fsh-generated/resources" -ig de.basisprofil.r4#1.5.4

java -Dfile.encoding=UTF-8 -jar "$VALIDATOR_JAR" "${files[@]}" -version 4.0 -ig "$FSH_DIR/fsh-generated/resources" -ig de.basisprofil.r4#1.5.4
#java -Dfile.encoding=UTF-8 -jar "$VALIDATOR_JAR" "${files[@]}" -version 4.0 -ig "$FSH_DIR/output" -ig de.basisprofil.r4#1.5.4 -level errors

#java -Dfile.encoding=UTF-8 -jar "$VALIDATOR_JAR" "${files[@]}" -version 4.0 -ig "$SCRIPT_DIR/xml" -ig de.basisprofil.r4#1.5.4
#java -Dfile.encoding=UTF-8 -jar "$VALIDATOR_JAR" "${files[@]}" -version 4.0 -ig "$SCRIPT_DIR/xml" -ig de.basisprofil.r4#1.4.0 
