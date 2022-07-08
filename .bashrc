#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '

#export IDEA_HOME="$HOME/sofrware/idea-IU-221.5787.30"
#export PATH=:$PATH:${IDEA_HOME}/bin
