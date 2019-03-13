#!/bin/bash
set -euo pipefail

mkdir -p ~/bin
curl https://www.sqlite.org/2019/sqlite-tools-win32-x86-3270200.zip > sql.zip
unzip sql.zip
mv sqlite-tools-win32-x86-3270200/* ~/bin/
rm -rf sqlite-tools-win32-x86-3270200
echo 'export PATH="$PATH:$HOME/bin"' >> .bash_profile
source .bash_profile
sqlite3 --version
# 3.27.2 2019-02-25 16:06:06 bd49a8271d650fa89e446b42e513b595a717b9212c91dd384aab871fc1d0f6d7

