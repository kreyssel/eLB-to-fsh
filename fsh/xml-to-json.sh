#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
XML_DIR=$(pwd)/$1
JSON_DIR=$(pwd)/$2

# create .validator base folder
if [ ! -d "$JSON_DIR" ]; then
  mkdir "$JSON_DIR"
fi

# Alle .xml-Dateien rekursiv sammeln
find "$XML_DIR" -type f -name '*.xml' | while read file; do
  # Relativen Pfad zum XML_DIR bestimmen (ohne ./)
  relpath="${file#$XML_DIR}"
  # Nur Dateiname ohne .xml
  basename="${relpath%.xml}"

  jsonfile="$JSON_DIR/${basename}.json"

  echo "Konvertiere $file → $jsonfile"
  node xml-to-json.js "$file" "$jsonfile"
done