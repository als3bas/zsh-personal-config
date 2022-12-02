# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search", as:plugin
zplug "zsh-users/zsh-syntax-highlighting", as:plugin
zplug "zsh-users/zsh-autosuggestions", as:plugin
zplug "zsh-users/zsh-completions", as:plugin
zplug "larkery/zsh-histdb", as:plugin
zplug "jirutka/zsh-shift-select", as:plugin
zplug "lukechilds/zsh-nvm", as:plugin

zplug "Jxck/dotfiles", as:command, use:"bin/{histuniq,color}"
zplug "tcnksm/docker-alias", use:zshrc

#OMZ
zplug "plugins/git",   from:oh-my-zsh
zplug "plugins/node",   from:oh-my-zsh


zplug 'romkatv/powerlevel10k', as:theme

if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# the detailed meaning of the below three variable can be found in `man zshparam`.
export HISTFILE=~/.histfile
export HISTSIZE=1000000   # the number of items for the internal history list
export SAVEHIST=1000000   # maximum number of items for the history file

## FIX CTRL + ARROW KEYS
bindkey "\eOc" forward-word
bindkey "\eOd" backward-word
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word