# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH=$HOME/.oh-my-zsh
export GOROOT=
export GOPATH=~/go
export GPG_TTY=$TTY

# export CARGO=$HOME/.cargo/bin
export PATH=$PATH:$GOPATH/bin
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR='nvim'
export PATH="$HOME/.npm/bin:$PATH"
export PATH=$(brew --prefix openssh)/bin:$PATH # macOS things
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env" # ghcup-env

alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
alias stream='cd ~/Documents/Hobbies/'
alias bb='cd ~/Documents/bashbunni'
alias notes='cd ~/dev-notebook'
alias config='nvim ~/.config/nvim/init.vim'
alias luaconf='nvim ~/.config/nvim/lua/bashbunni.lua'
alias tasks='cd ~/charm-notebook/tasks/'
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias sourcetmux='tmux source ~/.tmux.conf'
alias lint='golangci-lint run'
alias pj='cd ~/projects/project-management'
alias cal='TZ_LIST="US/Pacific,bash & JZ;US/Central,toby;US/Eastern,ayman & christian;America/Sao_Paulo,carlos;Europe/Berlin,muesli & pengu" ~/go/bin/tz'

# Kitty shortcuts
alias theme="kitty +kitten themes --reload-in=all" # then add theme name
alias icat="kitty +kitten icat"
alias connect="kitty +kitten ssh" # prevent weird keypress handling over ssh
alias olm="libolm"
alias goals="nvim ~/dev-notebook/reflection/goals-2022.md"

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
