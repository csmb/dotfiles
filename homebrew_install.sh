#!/bin/bash
#
# Install Homebrew packages

# Check for Homebrew
if test ! $(which brew)
then
  echo "Installing Homebrew for you."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "***************************************************************************************************"
echo "Installng packages:"
echo "***************************************************************************************************"

# Note: mongodb and elasticsearch require additional taps — install separately if needed:
#   brew tap mongodb/brew && brew install mongodb-community
#   brew tap elastic/tap && brew install elastic/tap/elasticsearch-full

brew install geoip libevent node rabbitmq readline ruby-build wget autoconf \
             git memcached mysql openssl pkg-config rbenv redis mactop ffmpeg cowsay \
             diff-so-fancy elixir

echo "***************************************************************************************************"
echo "Complete!"
echo "***************************************************************************************************"

exit 0
