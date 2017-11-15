#!/usr/bin/env bash
set -e
set -o pipefail
set -x

# install
if [ ! -d ./scriptcs ]
  then
    rm -f ./ScriptCs.0.13.3.nupkg
    wget "http://chocolatey.org/api/v2/package/ScriptCs/0.17.1" -O ScriptCs.0.13.3.nupkg
    unzip ./ScriptCs.0.13.3.nupkg -d scriptcs
fi

mono ./scriptcs/tools/scriptcs.exe -install

# script
mono ./scriptcs/tools/scriptcs.exe ./baufile.csx -- $@
