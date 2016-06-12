#!/bin/sh

function UNSETER() {
LOAD=`alias |grep ansible |wc -l`

if [ $LOAD -gt 0 ] 
    then
	unalias ansible-playbook
fi;

unset ANSIBLE_HOSTS
unset DO_REGION
unset DO_API_TOKEN
unset DO_API_KEY
}

case "$1" in

prod)  
    #echo "Staring $1 env"
    UNSETER
    export DO_API_KEY=`cat /etc/ansible/keys/do_token |grep DO_API_KEY |awk -F"=" '{print $2}'`
    export DO_REGION=`cat /etc/ansible/keys/do_token |grep DO_API_KEY |awk -F"=" '{print $2}'`
    export ANSIBLE_HOSTS="/etc/ansible/inventory/digital_ocean.sh"
    export SD_ENV="$1"
    alias ansible-playbook='/usr/local/bin/ansible-playbook -u root'
    #echo "$1 env is active"
    ;;
test)  
    #echo "Staring $1 env"
    UNSETER
    export DO_REGION=``
    export SD_ENV="$1"
    alias ansible-playbook='/usr/local/bin/ansible-playbook -u root'
    #echo "$1 env is active"
    ;;


*) echo "usage: source ./init.sh [prod|test]"
   ;;
esac