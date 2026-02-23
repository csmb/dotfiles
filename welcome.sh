#!/bin/bash
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

bash "$DOTFILES_DIR/homebrew_install.sh" && bash "$DOTFILES_DIR/preferences.sh"

# Symlink dotfiles
[ -f ~/.bash_profile ] && rm -i ~/.bash_profile || echo "Creating .bash_profile"
ln -s "$DOTFILES_DIR/bash_profile" ~/.bash_profile

[ -f ~/.git-completion.bash ] && rm -i ~/.git-completion.bash || echo "Creating .git-completion.bash"
ln -s "$DOTFILES_DIR/git-completion" ~/.git-completion.bash

[ -f ~/.gitconfig ] && rm -i ~/.gitconfig || echo "Creating .gitconfig"
ln -s "$DOTFILES_DIR/gitconfig" ~/.gitconfig

[ -f ~/.gitignore ] && rm -i ~/.gitignore || echo "Creating .gitignore"
ln -s "$DOTFILES_DIR/gitignore" ~/.gitignore

[ -f ~/.irbrc ] && rm -i ~/.irbrc || echo "Creating .irbrc"
ln -s "$DOTFILES_DIR/irbrc" ~/.irbrc

[ -f ~/.aliases.bash ] && rm -i ~/.aliases.bash || echo "Creating .aliases"
ln -s "$DOTFILES_DIR/aliases" ~/.aliases.bash

echo "***************************"
echo "All done!"
echo "***************************"
