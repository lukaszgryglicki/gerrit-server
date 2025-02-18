#!/bin/bash
while true
do
  dt=$(date +%s)
  echo "starting gerrit-${dt}"
  docker run -p 8080:8080 -p 29418:29418 \
    -v $(pwd)/data/cache:/var/gerrit/cache \
    -v $(pwd)/data/db:/var/gerrit/db \
    -v $(pwd)/data/etc:/var/gerrit/etc \
    -v $(pwd)/data/git:/var/gerrit/git \
    -v $(pwd)/data/index:/var/gerrit/index \
    gerritcodereview/gerrit \
    1>"gerrit-${dt}.log" \
    2>"gerrit-${dt}.err"
  echo "gerrit-${dt} stopped, starting a new one"
done
