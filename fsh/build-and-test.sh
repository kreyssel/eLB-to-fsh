#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

sushi

if [[ $? -ne 0 ]]; then
  echo "Fehler beim Ausführen von sushi. Prüfen wird abgebrochen."
  exit 1
fi

"$SCRIPT_DIR/../tools/validate.sh" "$1"

echo ""

if [[ $? -ne 0 ]]; then
  echo "Validierungs Fehler festgestellt!"
  exit 1
else
  echo "Validierung erfolgreich - es wurden keine Fehler festgestellt."
fi

echo ""