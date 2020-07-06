#!/bin/bash

# Install Dotfiles Shell Script
# Author: Maycon Lima <maycon.mflima@gmail.com>
# Date: Jul-2020
#

### Variables
dir_dotfiles=$(cd "$(dirname "${BASH_SOURCE[0]}")" && cd .. && pwd)
tmp_dotfiles_old_dir=~/.tmp_dotfiles_old_dir
declare -a dotfiles=("zshrc" "macos")
### 

echo "Starting the installation process of dotfiles..."
echo 
echo "	Your dotfiles repo is located in $dir_dotfiles"
echo
echo "	Steps:"

# 1 - Make backup from existing dotfiles
[ -d $tmp_dotfiles_old_dir ] && rm -rf $tmp_dotfiles_old_dir
echo "	1 - Creating backup of any existing dotfiles/symlink in $tmp_dotfiles_old_dir"
mkdir -p $tmp_dotfiles_old_dir
echo 

# 1.1 - Move any existing dotfiles in homedir to tmp_dotfiles_old_dir directory
echo "	1.1 - Moving any existing dotfiles/symlink from $HOME to $tmp_dotfiles_old_dir"
for file in $dotfiles; do

	if [ -f $HOME/."$file" ]; then
		echo "	Moving file .$file from $HOME to $tmp_dotfiles_old_dir"
		mv ~/.$file $tmp_dotfiles_old_dir/.$file
	fi
done
echo  

# 2 - Create files symlinks
echo "	2 - Create dotfile symlinks from $dir_dotfiles to $HOME"
for file in $dotfiles; do

	echo "	Creating symlink of file '$file' to -> $HOME/.$file"
	ln -sfn $dir_dotfiles/$file $HOME/.$file
done
echo

# 3 - Delete tmp dir
echo "	3 - Deleting $tmp_dotfiles_old_dir ..."
rm -rf $tmp_dotfiles_old_dir
echo

# 4 - Source macos settings
echo "	4 - Source macos settings"
source $HOME/.macos
echo

echo "We already done here, enjoy your dotfiles! bye =]"
