#!/usr/bin/env bash
config_dir=$HOME/.config


ln_msg(){ 
	echo "Linking $1 to $2"
}

noln_msg(){ 
	echo ""
	echo "$1 already exists."
	echo "Backup and remove $1 for new instalation"
}

make_link(){
	[[ ! -d $2 ]] \
	&& ln_msg $1 $2 \
	&& ln -s $1 $2 \
	|| noln_msg $2 
}


## NEOVIM 
nvim_in=$PWD/neovim
nvim_out=$config_dir/nvim

make_link $nvim_in $nvim_out


## TMUX PLUGINS
tpm_rep="https://github.com/tmux-plugins/tpm"
tpm_dir="$HOME/.tmux/plugins/tpm"
[[ ! -d tpm_dir ]] \
&& git clone $tpm_rep $tpm_dir \
|| echo "tmux-plugins is already installed. Remove $HOME/.tmux/plugins for new installation"


## TMUX

tmux_in=$PWD/tmux/tmux.conf
tmux_out=$HOME/.tmux.conf

make_link $tmux_in $tmux_out


