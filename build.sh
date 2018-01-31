#!/bin/bash

wget \
  --mirror \
  --page-requisites \
  --continue \
  --convert-links \
  --adjust-extension \
  --directory-prefix=public \
  http://reformation.arizona.edu
