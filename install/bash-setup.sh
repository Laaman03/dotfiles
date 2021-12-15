#!/usr/bin/env bash

custom_config=$HOME/repos/dotfiles/xdg_config/bash/.bashrc


if grep -xq "# BEGIN CUSTOM" $HOME/.bashrc; then
	sed '/# BEGIN CUSTOM/q' $HOME/.bashrc > /tmp/.bashrc
	cat /tmp/.bashrc $custom_config > $HOME/.bashrc
	rm /tmp/.bashrc
else
	echo "# BEGIN CUSTOM" >> $HOME/.bashrc
	cat $custom_config >> $HOME/.bashrc
fi
