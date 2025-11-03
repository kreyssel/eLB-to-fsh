#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SCRIPT_NAME=$(basename "$0")
XML_DIR=$(pwd)/$1
JSON_DIR=$(pwd)/$2

if [ $# -lt 2 ]; then
  echo "Aufruf: $SCRIPT_NAME XML_VERZEICHNIS JSON_VERZEICHNIS"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Parameter 1 ist kein Verzeichnis oder existiert nicht."
  exit 1
fi

# create .validator base folder
if [ ! -d "$JSON_DIR" ]; then
  mkdir "$JSON_DIR"
fi

if npm ls fhir -g &> /dev/null; then
  echo "npm fhir Modul bereits installiert"
else
  echo "npm fhir Modul ist nicht installiert, wird jetzt installiert..."
  npm install -g fhir
fi

# Alle .xml-Dateien rekursiv sammeln
find "$XML_DIR" -type f -name '*.xml' | while read file; do
  # Relativen Pfad zum XML_DIR bestimmen (ohne ./)
  relpath="${file#$XML_DIR}"
  # Nur Dateiname ohne .xml
  basename="${relpath%.xml}"

  jsonfile="$JSON_DIR/${basename}.json"

  echo "Konvertiere $file → $jsonfile"
  node "$SCRIPT_DIR/xml-to-json.js" "$file" "$jsonfile"
done