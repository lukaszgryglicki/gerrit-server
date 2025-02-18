#!/bin/bash
while true
do
  ngrok http http://localhost:8080 > /dev/null
done
