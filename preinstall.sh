#!/bin/bash

# Check if Homebrew is installed
if [ ! -f "`which brew`" ]; then
  echo 'Installing homebrew'
  cd /usr/local
  mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
else
  echo 'Updating homebrew'
  brew update
fi

# Check if oh-my-zsh is installed
OMZDIR="$HOME/.oh-my-zsh"
if [ ! -d "$OMZDIR" ]; then
  echo 'Installing oh-my-zsh'
  /bin/sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo 'Updating oh-my-zsh'
  source ~/.zshrc && omz update
fi

#	this is no longer necessary - macos now defaults to zsh
# Change default shell
#if [ ! $0 = "-zsh" ]; then
#  echo 'Changing default shell to zsh'
#  chsh -s /bin/zsh
#else
#  echo 'Already using zsh'
#fi
