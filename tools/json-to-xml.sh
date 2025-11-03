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

if npm ls fhir -g &> /dev/null; then
  echo "npm fhir Modul bereits installiert"
else
  echo "npm fhir Modul ist nicht installiert, wird jetzt installiert..."
  npm install -g fhir
fi

# Alle .json-Dateien rekursiv sammeln
find "$JSON_DIR" -type f -name '*.json' | while read file; do
  # Relativen Pfad zum JSON_DIR bestimmen (ohne ./)
  relpath="${file#$JSON_DIR}"
  # Nur Dateiname ohne .json
  basename="${relpath%.json}"

  xmlfile="$XML_DIR/${basename}.xml"

  echo "Konvertiere $file → $xmlfile"
  node "$SCRIPT_DIR/json-to-xml.js" "$file" "$xmlfile"
done