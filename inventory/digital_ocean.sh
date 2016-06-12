#!/bin/bash

source /etc/ansible/init.sh prod

/etc/ansible/inventory/digital_ocean.py --list | python -m json.tool


