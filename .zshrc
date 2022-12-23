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

zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/node", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "plugins/deno", from:oh-my-zsh

zplug "romkatv/powerlevel10k", as:theme, depth:1

if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo
        zplug install
    fi
fi
zplug load
[[ ! -f ~/.custom-config.zsh ]] || source ~/.custom-config.zsh
