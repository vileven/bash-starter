# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ -f ~/.colorsrc ]; then
	. ~/.colorsrc
fi



shopt -s histappend
PROMPT_COMMAND='history -a'

# User specific aliases and functions
export LC_ALL=ru_RU.UTF-8
export LANG=ru_RU.UTF-8
export PATH=~/bin/:/usr/local/sbin:$PATH

alias gs='git status --short'
#alias ga='git add '
#alias gb='git branch '
#alias gc='git commit'
alias gd='git diff'
alias gce='git commit --allow-empty --no-verify -m "Empty commit" && git push'
#alias go='git checkout '

#alias python=python2.7

# Set git autocompletion and PS1 integration
# source ~/.git-prompt.sh
if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='anatolijostapenko[\W]$(__git_ps1 "(%s)"): '
fi

if [ -f /etc/bash_completion.d/git ]; then
  . /etc/bash_completion.d/git
fi

if [ -f  /usr/share/git-core/contrib/completion/git-prompt.sh ]; then
  .  /usr/share/git-core/contrib/completion/git-prompt.sh
fi

if [ -f ~/bin/.git-completion.sh ]; then
    . ~/bin/.git-completion.sh
fi

GIT_PS1_SHOWDIRTYSTATE=true

#if [ -f /opt/local/etc/bash_completion ]; then
#    . /opt/local/etc/bash_completion
#fi

PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
