#!/usr/bin/env bash

dotfiles=$HOME/repos/dotfiles

rm -rf $HOME/.config

ln -rsf $dotfiles/xdg_config $HOME/.config
ln -rsf $dotfiles/xdg_config/ssh/config $HOME/.ssh/config
