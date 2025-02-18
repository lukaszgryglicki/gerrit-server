#!/bin/bash
GIT_SSH_COMMAND='ssh -i /root/.ssh/id_rsa_lgryglickidev -o IdentitiesOnly=yes' git -c "user.name=Lukasz Gryglicki" -c "user.email=lgryglicki@contractor.linuxfoundation.org" push -f ssh://lukaszgryglicki@147.75.85.27:29418/All-Projects HEAD:refs/meta/config
