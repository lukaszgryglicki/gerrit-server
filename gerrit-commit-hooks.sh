#!/bin/bash
scp -i /root/.ssh/id_rsa_lgryglickidev -p -P 29418 lukaszgryglicki@147.75.85.27:hooks/commit-msg .git/hooks/
