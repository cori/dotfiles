#!/bin/bash

# install and configure bash-it
if [ -d ~/.bash_it ]; then
        # this doesn't work since the script runs in it's own shell
        source ~/.bashrc
else
#        git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
        git clone --depth=1 https://github.com/cori/bash-it.git --branch alternate-install --single-branch  ~/.bash_it
        /app/.bash_it/install.sh --silent
        source /app/.bashrc
        bash-it enable alias git
        bash-it enable completion git
        bash-it enable completion hub
        bash-it enable completion todo
        bash-it enable plugin todo
        bash-it enable plugin git
        bash-it enable plugin hub
fi

# git setup
git config --replace-all user.name "cori"
git config --replace-all user.email "cori.schlegel@gmail.com"
