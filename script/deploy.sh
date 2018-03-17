#!/bin/bash

set -e
cd "$(dirname "$0")"/..

rsync -av \
  --exclude '.git*' \
  -e "ssh" \
  public/ \
  ubuntu@54.154.31.160:/www/agileday_new/agileday.it/htdocs/mini/2018/vimercate



