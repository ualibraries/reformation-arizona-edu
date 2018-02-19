#!/bin/bash

wget \
  --mirror \
  --page-requisites \
  --continue \
  --convert-links \
  --backup-converted \
  --adjust-extension \
  --directory-prefix=public \
  --no-host-directories \
  --user-agent="Mozilla/5.0" \
  --execute robots=off \
  --span-hosts \
  --domains reformation.arizona.edu,cdn.uadigital.arizona.edu,ajax.googleapis.com \
  http://reformation.arizona.edu
