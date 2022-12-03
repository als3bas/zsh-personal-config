## CD to ~
echo "📂 Changing directory to ~"
cd ~

# install zplug
echo "📦 Installing zplug"
curl -sL --proto-redir -all,https "https://raw.githubusercontent.com/zplug/installer/master/installer.zsh?$RANDOM" | zsh

# download .zshrc & configs
echo "📥 Downloading zsh assets"
curl -s --proto-redir -all,https "https://raw.githubusercontent.com/sebalvaro/zsh-personal-config/main/.zshrc?$RANDOM" --output .zshrc.new
echo "📥 Downloading custom config"
curl -s --proto-redir -all,https "https://raw.githubusercontent.com/sebalvaro/zsh-personal-config/main/.custom-config.zsh?$RANDOM" --output .custom-config.zsh.new

# backup old .zshrc
echo "📦 Backing up old files"
mv -f .zshrc .zshrc.old
mv -f .custom-config.zsh .custom-config.zsh.old

# move zshrc
echo "📤 Moving .zshrc.new to .zshrc"
mv -f .zshrc.new ~/.zshrc
mv -f .custom-config.zsh.new ~/.custom-config.zsh

# then exec zsh
echo "🚀 Running  zsh again"
exec zsh