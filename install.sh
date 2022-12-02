## CD to ~
echo "📂 Changing directory to ~"
cd ~

# install zplug
echo "📦 Installing zplug"
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# download .zshrc 
echo "📥 Downloading .zshrc from GitHub"
curl -s https://raw.githubusercontent.com/sebalvaro/zsh-personal-config/main/.zshrc --output .zshrc.new

# backup old .zshrc
echo "📦 Backing up old .zshrc"
mv .zshrc .zshrc.old

# move zshrc
echo "📤 Moving .zshrc.new to .zshrc"
mv -f .zshrc.new ~/.zshrc

# then exec zsh
echo "🚀 Running  zsh again"
exec zsh