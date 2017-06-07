#!/bin/bash
#shamelessly stolen from https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

function config (
    /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
)

mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
    echo "checked out config";
else
    echo "Backing up existing dotfiles"
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
