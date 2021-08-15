#!/bin/bash
set -Eeuo pipefail

cd $HOME
pwd
( set -x; git config --global credential.helper || git config --global --replace-all credential.helper 'cache --timeout 2592000' )

if [[ ! -d .dot ]]; then
  ( set -x; git clone --depth 1 https://k9i@github.com/k9i/dotfile.git .dot )
fi

exec .dot/bin/setup_dot.sh
