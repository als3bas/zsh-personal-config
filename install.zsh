# Check if git is installed, and clone.
if ! type git > /dev/null 2>&1; then
  echo "Git not installed, please install"
  exit 1
else
  git clone --depth=1 https://github.com/als3bas/zsh-personal-config.git
  cd ./zsh-personal-config
fi

# Check if zsh is installed
if ! type zsh > /dev/null 2>&1; then
  echo "Zsh not installed, please install"
  exit 1
fi

# Install zinit
if ! type zinit > /dev/null 2>&1; then
  echo "Zinit not installed, installing"
  bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
fi

# Install Starship 
if ! type starship > /dev/null 2>&1; then
  echo "Starship not found, installing"
  curl -sS https://starship.rs/install.sh | sh
fi

[[ ! -f ~/.zshrc ]] || rm ~/.zshrc 
cp custom.zshrc ~/.zshrc
exec zsh