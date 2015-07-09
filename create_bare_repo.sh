#!/bin/bash
REPONAME="$1"
REPOPATH=$HOME/repositories/$REPONAME
mkdir -p $REPOPATH
( cd $REPOPATH && git init --bare )
echo "Created bare repo at $REPOPATH"
