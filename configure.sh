#!/bin/bash

HERE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )";
cd $HERE;

# if salt doesn't exist, bootstrap it
if ! hash salt-call 2>/dev/null; then
  #wget -O - http://bootstrap.saltstack.org | sudo sh
  wget -O - https://raw.github.com/saltstack/salt-bootstrap/develop/bootstrap-salt.sh | sudo sh -s -- git develop
fi

salt-call --config-dir=$HERE/config --local state.highstate "$@"
