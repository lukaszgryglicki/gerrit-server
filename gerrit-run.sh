#!/bin/bash
docker run -p 8080:8080 -p 29418:29418 \
  -v $(pwd)/data/cache:/var/gerrit/cache \
  -v $(pwd)/data/db:/var/gerrit/db \
  -v $(pwd)/data/etc:/var/gerrit/etc \
  -v $(pwd)/data/git:/var/gerrit/git \
  -v $(pwd)/data/index:/var/gerrit/index \
  -v $(pwd)/data/lib:/var/gerrit/lib \
  -e CANONICAL_WEB_URL='http://147.75.85.27:8080/' \
  -e HTTPD_LISTEN_URL='proxy-http://*:8080/' \
  gerritcodereview/gerrit
#  -e HTTPD_LISTEN_URL='proxy-https://*:8080/' \
