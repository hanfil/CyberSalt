# 1 - Install SaltStack Master
> Information:
> If you already have a saltstack master you can skip to step 2!

1. Install Saltstack
Use this guide: 
https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/ubuntu.html

2. Accept minion keys
```
salt-key -L # View all the minions and unaccepted keys
salt-key -A # Accept all keys
```
Take note of the master hostname/fqdn.

# 2 - Install CyberSalt config
```
git clone https://github.com/hanfil/CyberSalt.git

cd CyberSalt

./setup.sh
```

Every state is now under cybersalt. E.g. `salt '-' state.apply cybersalt.update`
