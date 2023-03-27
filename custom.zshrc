if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


# ---------------------------------------------------------------- 
#                          Load Plugins
# ----------------------------------------------------------------

zi light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

zi ice wait lucid
zi load zsh-users/zsh-history-substring-search
zi load zdharma-continuum/fast-syntax-highlighting
zi load zsh-users/zsh-autosuggestions
zi load zsh-users/zsh-completions
zi load larkery/zsh-histdb
zi load jirutka/zsh-shift-select
zi load lukechilds/zsh-nvm
zi snippet OMZP::git
zi snippet OMZP::node
zi snippet OMZP::npm
zi snippet OMZP::gitignore
zi snippet OMZP::git-extras
zi snippet OMZL::termsupport.zsh

# ---------------------------------------------------------------- 
#                          Custom config 
# ----------------------------------------------------------------
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


# ---------------------------------------------------------------- 
#                         Launch Starship
# ----------------------------------------------------------------
eval "$(starship init zsh)"
## starship preset tokyo-night > ~/.config/starship.toml
