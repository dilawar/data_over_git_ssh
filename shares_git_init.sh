#!/usr/bin/env bash
set -x 
set -e
GIT_VERSION=`git --version`
if [ ! `which sshpass` ]; then
    echo "Install sshpass utility"
    exit
fi

REPO_NAME="$1"
if [ ! $REPO_NAME ]; then
    echo "Usage: $0 repo_name"
    exit
fi

# check for git version here, 2.4 works. Add ppa if this version is not
# avaialble on system.
source shares.env
SSH="sshpass -e ssh"

# Cool, now everything is setup, create a empty repo on server.
$SSH $SHARE_USER@$SHARE_HOST '$HOME/.local/bin/create_bare_repo.sh' $REPO_NAME
