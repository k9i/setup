#!/bin/bash
set -Eeuo pipefail

cd $HOME
pwd

if [[ ! -d .dot ]]; then
  git clone https://k9i@github.com/k9i/dotfile.git .dot
fi

exec .dot/bin/setup_dot.sh
