#!/usr/bin/env bash


if [ $# -eq 0 ]; then
	echo "No version supplied"
	echo "Usage nvim-setup.sh <version>"
	exit 1
fi
nvim_version=$1
wget \
	https://github.com/neovim/neovim/releases/download/$nvim_version/nvim.appimage \
	-O $HOME/.bin/nvim.appimage

pushd $HOME/.bin

ln -sf ./nvim.appimage nvim

