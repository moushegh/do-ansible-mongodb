# Ansible roles and playbook to run 3 node TLS enabled cluster at digital-ocean
to run you need to have ansible 2.0+ with all extra moduels enabled.

```git clone this repo to /etc/ansible/ ```

```edit /etc/ansible/keys/do_keys and add your digital ocean token ID```

```
$cd /etc/ansible
$source ./init.sh prod (dev or test)```
$ansible-playbook playbooks/play-digital.yml
$ansible-playbook playbooks/play-digital.yml
```

# todos
add backup/restore stupport 
