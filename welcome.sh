#!/bin/sh

bash homebrew_install.sh && bash preferences.sh


# Symlink dotfiles

rm -i ~/.bash_profile
ln -s ~/code/dotfiles/bash_profile ~/.bash_profile

rm -i ~/.git-completion.bash
ln -s ~/code/dotfiles/git-completion.bash ~/.git-completion.bash

rm -i ~/.gitconfig
ln -s ~/code/dotfiles/gitconfig ~/.gitconfig

rm -i ~/.gitignore
ln -s ~/code/dotfiles/gitignore ~/.gitignore

rm -i ~/.irbrc
ln -s ~/code/dotfiles/irbrc ~/.irbrc
