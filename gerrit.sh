#!/bin/bash
while true
do
  dt=$(date +%s)
  echo "starting gerrit-${dt}"
  ./gerrit-run.sh 1>"gerrit-${dt}.log" 2>"gerrit-${dt}.err"
  echo "gerrit-${dt} stopped, starting a new one"
done
