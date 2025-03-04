#!/bin/bash
docker cp $(docker container ls --filter ancestor=gerritcodereview/gerrit --format '{{.ID}}'):/var/gerrit/lib data/lib
chmod -R ugo+rwx data/lib
