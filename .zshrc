fpath=(~/.zsh/plugins/zsh-completions/src $fpath)
autoload -Uz compinit && compinit

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

export IDEA_HOME="/opt/software/idea-IU"
export PATH=:$PATH:${IDEA_HOME}/bin

alias digfactory="cd ~/code/digitalfactory/Trunk/code"

if [ -x /usr/bin/dircolors ]; then
	test -r /home/tyjian/.zsh/.dircolors && eval "$(dircolors -b /home/tyjian/.zsh/.dircolors)" || eval "$(dircolors -b)"
	alias grep='grep --color=auto'
	alias egrep='egrep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias ls='ls --color=auto'
fi
