#
# ~/.bashrc
#

export EDITOR='vim'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto --exclude-dir=.cvs --exclude-dir=.git --exclude-dir=.hg --exclude-dir=.svn'
alias less='less -R'
PS1='[\u@\h \W]\$ '

# bash history
export HISTCONTROL=ignoreboth

# btrfs optimization - don't actually duplicate files until changes are made
alias cp='cp --reflink=auto'

