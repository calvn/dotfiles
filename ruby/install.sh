#!/bin/sh
#
# RVM
#
# This installs rvm since it can't be done with brew

# Check for Homebrew
if test ! $(which rvm)
then
  echo "  Installing RVM for you."

  # Get gpg keys
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

  # Install rvm
  curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles stable --ruby
fi

exit 0
