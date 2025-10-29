#!/bin/bash

##
## install apt-get install inotify-tools
##

if [[ -z "$1" || -z "$2" ]]; then
  echo "Nutzung: $0 <Pfad/zum/beobachten> <Pfad/zum/prüfen>"
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
WATCH_DIR=$(pwd)/$1
VALIDATE_SRC=$(pwd)/$2

echo "Beobachte Verzeichnis: $WATCH_DIR"
echo "Bei Änderungen wird geprüft: $VALIDATE_SRC"

#inotifywait -m -r -e modify,create,delete,move --format '%w%f' "$WATCH_DIR" | while read FILE

last_pgid=""

inotifywait -m -r -e modify --format '%w%f' "$WATCH_DIR" | while read FILE
do
  # Vorherigen Subprozess (inkl. Kinder) beenden
  if [[ -n "$last_pgid" ]] && ps --no-headers -o pgid= -p "$last_pgid" | grep -q .; then
    echo "Beende vorherige Prozessgruppe: $last_pgid"
    kill -TERM -- -"$last_pgid"
  fi

  # Prozessgruppe explizit mit setsid starten
  setsid bash -c "$SCRIPT_DIR/build-and-test.sh \"$VALIDATE_SRC\"" &
  last_pgid=$!
done