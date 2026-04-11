#!/usr/bin/bash

ln -sT $(pwd)/config/helix ~/.config/helix

if ! grep config-helix-theme ~/.bashrc; then
	echo "export PATH=\$PATH:$(pwd)/src/" >> ~/.bashrc;
	echo "alias hx='config-helix-theme && /usr/bin/hx'" >> ~/.bashrc;
fi
