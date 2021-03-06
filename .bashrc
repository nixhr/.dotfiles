# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
#export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
#alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
export HISTSIZE=
export HISTFILESIZE=
export HISTTIMEFORMAT='%F %T '
export TZ='Europe/Zagreb'
export EDITOR=vim
export VISUAL=vim
export PS1='\[\033[01;31m\]\u\[\033[01;33m\]@\[\033[01;36m\]\h \[\033[01;33m\]\w \[\033[01;35m\]\$ \[\033[00m\]'
if [ -e /etc/bash_completion ]
then
  source /etc/bash_completion
fi
if [ -e ~/.bash-git-prompt/gitprompt.sh ]
then
  export GIT_PROMPT_ONLY_IN_REPO=1
  export GIT_PROMPT_THEME=Custom
  source ~/.bash-git-prompt/gitprompt.sh
fi
