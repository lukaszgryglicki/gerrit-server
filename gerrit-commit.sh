#!/bin/bash
GIT_SSH_COMMAND='ssh -i /root/.ssh/id_rsa_lgryglickidev -o IdentitiesOnly=yes' git -c "user.name=Lukasz Gryglicki" -c "user.email=lgryglicki@contractor.linuxfoundation.org" commit -asm "Update project.config"
