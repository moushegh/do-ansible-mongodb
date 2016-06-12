Ansible roles-playbooks to start mongodb-tls eanbled replica set at digital ocean

git checkout THIS_REPO to /etc/ansible/

make sure you entered your digital oceal TOKEN_ID in key/do_token

make sure to edit your .gitignore and remove all token file likes (for example in inventlory/*.ini)

to run :

cd /etc/ansible
source ./init.sh prod (i suppose we run on prod...)
ansible-playbook playbooks/play-digital.yml


