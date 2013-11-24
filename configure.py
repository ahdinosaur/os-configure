#!/bin/bash

HERE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )";
cd $HERE;

cd ./ansible;

ansible-playbook -i inventory all.yml
