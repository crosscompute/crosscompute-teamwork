#!/bin/bash
TIMESTAMP=$(date +%Y%m%d-%H%M)
FOLDER=/srv/crosscompute-teamwork-$TIMESTAMP

cd ~/Projects/crosscompute-teamwork
git checkout main
git pull

source \
    ~/.virtualenvs/crosscompute-teamwork/bin/activate
python \
    scripts/build.py \
    datasets/configuration.yml \
    $FOLDER

ln -snf $FOLDER /srv/crosscompute-teamwork
