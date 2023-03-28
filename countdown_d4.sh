#!/bin/bash

# Definieren des Zielzeitpunkts
target=$(date -j -f "%Y-%m-%d %H:%M:%S" "2023-06-06 00:00:00" "+%s")

# Schleife für den Countdown
while [ $(date +%s) -lt $target ]; do
    # Berechnung der verbleibenden Zeit
    remaining=$(($target - $(date +%s)))
    days=$(($remaining / 86400))
    hours=$(($remaining / 3600 % 24))
    minutes=$(($remaining / 60 % 60))
    seconds=$(($remaining % 60))

    # Ausgabe des Countdowns
    echo -ne "\r$days Tage, $hours Stunden, $minutes Minuten, $seconds Sekunden bis zum Release von Diablo 4"

    # Warten für 1 Sekunde
    sleep 1
done

# Ausgabe der Fertigmeldung nach Ablauf des Countdowns
echo -e "\nDiablo 4 wurde veröffentlicht!"
