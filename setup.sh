#! /bin/bash
echo "Fetching updates from github repo."
git pull

echo "Creating /srv/salt directory. It fails if it exists."
mkdir /srv/salt

echo "Importing cybersalt state files, under /srv/salt/cybersalt."
cp -r states/cybersalt /srv/salt/

echo "Applying state to salt master"
salt '$(hostname --fdqn)' state.apply cybersalt.salt-master
