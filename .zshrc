# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

######################
######## p10k ########
######################
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/xissshawww/.oh-my-zsh"

# ZSH_THEME="bira"
# ZSH_THEME=random
ZSH_THEME="powerlevel10k/powerlevel10k"

TERM=xterm-256color

HIST_STAMPS="mm/dd/yyyy"
yourdate=`date +%Y_%m_%d_%H_%M_%S`

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting git-open command-not-found colored-man-pages brew tmux vscode wd zsh-nvm)

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# doom-emacs
# export PATH=$PATH:~/.emacs.d/bin

# nvm
# export NVM_DIR="$HOME/.nvm"
# export NVM_NODEJS_ORG_MIRROR="http://npm.taobao.org/mirrors/node" 
# source ~/.nvm/nvm.sh

# zsh-nvm lazy load
export NVM_LAZY_LOAD=true

source $ZSH/oh-my-zsh.sh

# python
# PATH="/usr/local/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
# export PATH
# alias python="/usr/local/Frameworks/Python.framework/Versions/3.9/bin/python3.9"

# completion
autoload -U compinit
compinit

# correction
# setopt correctall
# setopt HASH_LIST_ALL
# setopt CORRECT
# CORRECT_IGNORE="[_|.]*"

#Disable autocorrect
unsetopt correct_all
unsetopt correct
DISABLE_CORRECTION="true" 

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# doom-emacs
# export PATH=$PATH:~/.emacs.d/bin

# python
# PATH="/usr/local/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
# export PATH
# alias python="/usr/local/Frameworks/Python.framework/Versions/3.9/bin/python3.9"

# prompt
autoload -U promptinit
promptinit

#########################################
# alias 
#########################################
#alias philo="~/git_syn/philo_bot.sh"
alias ffs-post="~/git_syn/ffs-post_bot.sh"
alias doomerlib="~/git_syn/doomerlib_bot.sh"
alias deep-swarm-code="~/git_syn/hugo-mydocs.sh"
alias deep-swarm-index="~/git_syn/hugo-deepswarm.sh"
alias xiix-config="~/git_syn/xiix_config.sh"
alias spinoza="~/git_syn/spinoza.sh"

alias t1="tree -N -L 1"
alias t2="tree -N -L 2"
alias t3="tree -N -L 3"
alias szsh="source ~/.zshrc"
alias ezsh="nv ~/.zshrc" 
alias eala="nv ~/.config/alacritty/alacritty.yml"
alias eranger="nv ~/.config/ranger/rc.conf"
alias etmux="nv ~/.tmux.conf"
alias c="clear"
#alias rm="trash"
alias neofetch='neofetch --ascii ~/.config/neofetch/ascii-name'

alias vim='TERM=xterm-256color vim'
alias vi='vim'
alias nv='nvim'
alias envim='nv ~/.config/nvim/lua/core/init.lua'

#alias tmux="TERM=screen-256color-bce tmux"

alias pd='/Applications/Pd-l2ork.app/Contents/MacOS/nwjs'

#########################################
# function 
#########################################
function lazygit() {
	git add -A
	git commit -a -m "$1"
	git push
}

# homebrew
export HOMEBREW_NO_AUTO_UPDATE=true

# poetry
# export PATH="$HOME/.poetry/bin:$PATH"

# python
# export PATH="/usr/local/opt/python@3.7/bin:$PATH"

# ruby
# export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.7.2/bin:$PATH"

# source /usr/local/opt/chruby/share/chruby/chruby.sh

#################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#################
# __conda_setup="$('/Users/xissshawww/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/xissshawww/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/xissshawww/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/xissshawww/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

# java
# export JAVA_HOME=$(/usr/libexec/java_home)
# export PATH=$JAVA_HOME/bin:$PATH
# export CLASS_PATH=$JAVA_HOME/lib

#################
# proxy
#################
# alias proxy='export all_proxy=socks5://127.0.0.1:1080'
# alias unproxy='unset all_proxy'

export http_proxy=http://127.0.0.1:1087
export https_proxy=http://127.0.0.1:1087
export ALL_PROXY=socks5://127.0.0.1:1080

# autojump
 [[ -s /Users/xissshawww/.autojump/etc/profile.d/autojump.sh ]] && source /Users/xissshawww/.autojump/etc/profile.d/autojump.sh
 autoload -U compinit && compinit -u

# command-not-found
HB_CNF_HANDLER="$(brew --repository)/Library/Taps/homebrew/homebrew-command-not-found/handler.sh"
if [ -f "$HB_CNF_HANDLER" ]; then
source "$HB_CNF_HANDLER";
fi
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/2.6.3/bin:$PATH"
[ -f "/Users/xissshawww/.ghcup/env" ] && source "/Users/xissshawww/.ghcup/env" # ghcup-env

# eval "$(starship init zsh)"


#################
# FZF
#################
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd --type f --color=never --hidden'
export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#d6157b,info:#86C06C,hl:#0dbc79,hl+:#23d18b'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

# use fzf in bash and zsh
# Use ~~ as the trigger sequence instead of the default **
export FZF_COMPLETION_TRIGGER='~~'

# Options to fzf command
#export FZF_COMPLETION_OPTS=''

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.

#_fzf_compgen_path() {
#  fdfind --hidden --follow -E ".git" -E "node_modules" . /etc /home
#}

# Use fd to generate the list for directory completion
#_fzf_compgen_dir() {
#  fdfind --type d --hidden --follow -E ".git" -E "node_modules" . /etc /home
#}

# the fuck
eval $(thefuck --alias)


################################
#########p10k###################
###############################
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

