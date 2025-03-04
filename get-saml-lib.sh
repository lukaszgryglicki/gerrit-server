#!/bin/bash
wget https://gerrit-ci.gerritforge.com/job/plugin-saml-bazel-master-stable-3.9/lastSuccessfulBuild/artifact/bazel-bin/plugins/saml/saml.jar -O data/lib/saml.jar
chmod ugo+rwx data/lib/saml.jar
