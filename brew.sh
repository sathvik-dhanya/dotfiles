#!/usr/bin/env bash

####
# Setup mac using brew
####

# Note - Can use the below script to install Homebrew, but if you want to install full Xcode,
# it's better to install that from the app store before installing Homebrew.

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh
fi

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
echo "Updating homebrew..."
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix)/opt/coreutils/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
# Don’t forget to add `$(brew --prefix)opt/findutils/libexec/gnubin` to `$PATH`.
brew install findutils

# Install a modern version of Bash.
echo "Installing/updating bash..."
brew install bash
brew install bash-completion@2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install more recent versions of some macOS tools.
echo "Installing common tools"
brew install binutils
brew install gnu-sed --with-default-names
brew install grep
brew install jq
brew install netcat
brew install nmap
brew install openssh
brew install screen
brew install ssh-copy-id
brew install telnet
brew install tree
brew install vim --with-override-system-vi
brew install wget

# Remove outdated versions from the cellar.
brew cleanup

# Install Firefox, Chrome, iterm2, slack, vagrant, virtualbox next
