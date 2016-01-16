#!/bin/bash
# bash homebrew_install.sh && bash preferences.sh

# Symlink dotfiles
[ -f ~/.bash_profile ] && rm -i ~/.bash_profile || echo "Creating .bash_profile"
ln -s ~/code/dotfiles/bash_profile ~/.bash_profile

[ -f ~/.git_completion.bash ] && rm -i ~/.git_completion.bash || echo "Creating .git_completion.bash"
ln -s ~/code/dotfiles/git-completion ~/.git-completion.bash

[ -f ~/.gitconfig.bash ] && rm -i ~/.gitconfig.bash || echo "Creating .gitconfig"
ln -s ~/code/dotfiles/gitconfig ~/.gitconfig

[ -f ~/.gitignore ] && rm -i ~/.gitignore || echo "Creating .gitignore"
ln -s ~/code/dotfiles/gitignore ~/.gitignore

[ -f ~/.irbrc.bash ] && rm -i ~/.irbrc.bash || echo "Creating .irbrc"
ln -s ~/code/dotfiles/irbrc ~/.irbrc

[ -f ~/.aliases.bash ] && rm -i ~/.aliases.bash || echo "Creating .aliases"
ln -s ~/code/dotfiles/aliases ~/.aliases.bash
