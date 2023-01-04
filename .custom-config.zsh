## Nano as default editor
export EDITOR=nano
export VISUAL="$EDITOR"

## LS COLORS
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
alias ls="ls --color=auto"
export CLICOLOR=1

## HIST FILE FIX
export HISTFILE=~/.histfile
export HISTSIZE=1000000
export SAVEHIST=1000000

## FIX CTRL + ARROW KEYS
bindkey "\eOc" forward-word
bindkey "\eOd" backward-word
bindkey "\e[1;5C" forward-word
bindkey "\e[1;5D" backward-word
bindkey "\e[5C" forward-word
bindkey "\e[5D" backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[3;5~" delete-word
