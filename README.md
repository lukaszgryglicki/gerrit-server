# Gerrit server

This is a POC of gerrit server running with EasyCLA integration for The Linux Foundation - access the server [here](http://147.75.85.27:8080).


# Configuration

1) Login to [Gerrit server](http://147.75.85.27:8080) with OpenID - that user will become an admin.
2) Go to [SSH Keys](http://147.75.85.27:8080/settings/#SSHKeys) - copy you public SSH key(s) there, so you can access the gerrit server via SSH. Set your username (for example `lukaszgryglicki`).
3) Try to SSH into the server: `` ssh -o Port=29418 -i /root/.ssh/id_rsa_lgryglickidev lukaszgryglicki@147.75.85.27 ``, or adjust `gerrit-ssh.sh`.
4) Clone `All-Projects` repo: `` GIT_SSH_COMMAND='ssh -i /root/.ssh/id_rsa_lgryglickidev -o IdentitiesOnly=yes' git clone ssh://lukaszgryglicki@147.75.85.27:29418/All-Projects ``, or adjust `gerrit-clone.sh`.
5) Go to `All-Projects` and install git commit hook via: `` scp -i /root/.ssh/id_rsa_lgryglickidev -p -P 29418 lukaszgryglicki@147.75.85.27:hooks/commit-msg .git/hooks/ ``, or adjust `gerrit-commit-hooks.sh`.
6) Do changes to `project.config`.
7) Commit changes: `` GIT_SSH_COMMAND='ssh -i /root/.ssh/id_rsa_lgryglickidev -o IdentitiesOnly=yes' git -c "user.name=Lukasz Gryglicki" -c "user.email=lgryglicki@contractor.linuxfoundation.org" commit -asm "Update project.config" ``, or adjust `gerrit-commit.sh`.
8) Add push permission for `refs/meta/config` brancg [here](http://147.75.85.27:8080/admin/repos/All-Projects,access). You may also need to add forge author, committer permissions.
9) Add groups `sun-ccla` and `sun-icla` via Gerrit UI and then add them in `All-Projects/groups` (check their UUID values via gerrit UI).
10) Push changes via: `` GIT_SSH_COMMAND='ssh -i /root/.ssh/id_rsa_lgryglickidev -o IdentitiesOnly=yes' git -c "user.name=Lukasz Gryglicki" -c "user.email=lgryglicki@contractor.linuxfoundation.org" push -f ssh://lukaszgryglicki@147.75.85.27:29418/All-Projects HEAD:refs/meta/config ``, or update `gerrit-push.sh`.
