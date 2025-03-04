#!/bin/bash
docker exec -it $(docker container ls --filter ancestor=gerritcodereview/gerrit --format '{{.ID}}') bash
