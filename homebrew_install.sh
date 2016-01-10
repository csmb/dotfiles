#!/bin/sh
#
# Install Homebrew packages

# Check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "***************************************************************************************************"
echo "Installng packages:"
echo "***************************************************************************************************"

brew install brew-cask geoip libevent mongodb node phantomjs rabbitmq readline ruby-build wget autoconf elasticsearch git memcached mysql openssl pkg-config rbenv redis htop-osx ffmpeg cowsay

echo "***************************************************************************************************"
echo "Complete!"
echo "***************************************************************************************************"

exit 0
