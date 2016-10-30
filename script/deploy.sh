#!/bin/bash

set -e
cd "$(dirname "$0")"/..

PEM=../Infrastruttura/iam_amazon.pem

[ -f "$PEM" ] || {
  echo "$PEM: not found"
  exit 1
}

rsync -av \
  --exclude '.git*' \
  -e "ssh -i $PEM" \
  public/ \
  ubuntu@54.154.31.160:/www/agileday_new/agileday.it/htdocs/mini/2017/vimercate



