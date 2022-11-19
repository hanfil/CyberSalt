#! /bin/bash

mkdir /srv/salt

echo "Importing cybersalt state files, under /srv/salt/cybersalt."
cp -r states/cybersalt /srv/salt/
