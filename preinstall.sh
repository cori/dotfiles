#!/bin/bash

# Check if Homebrew is installed
if [ ! -f "`which brew`" ]; then
  echo 'Installing homebrew'
  cd /usr/local
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
else
  echo 'Updating homebrew'
  brew update
fi

# Check if oh-my-zsh is installed
#OMZDIR="$HOME/.oh-my-zsh"
#if [ ! -d "$OMZDIR" ]; then
#  echo 'Installing oh-my-zsh'
#  /bin/sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#else
#  echo 'Updating oh-my-zsh'
#  /bin/zsh -c "source ~/.zshrc"
#fi
