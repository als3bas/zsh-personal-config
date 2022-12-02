# install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# download .zshrc 
curl https://raw.githubusercontent.com/sebalvaro/zsh-personal-config/main/.zshrc --output .zshrc

# move zshrc
cp .zshrc ~/.zshrc

# then exec zsh
exec zsh