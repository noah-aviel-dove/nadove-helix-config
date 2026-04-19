#!/usr/bin/bash

bashrc="$HOME/.bashrc"

ln -sT $(pwd)/config/helix ~/.config/helix

if ! grep config-helix-theme "$bashrc"; then
	echo "export PATH=\$PATH:$(pwd)/exec/" >> "$bashrc";
	echo "alias hx='config-helix-theme && RUST_BACKTRACE=1 /usr/bin/hx'" >> "$bashrc";
	. "$bashrc";
fi
