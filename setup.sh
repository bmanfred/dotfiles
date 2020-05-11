#!/bin/sh

# checks if zsh is installed 
# installs zsh if it does not already exist
zsh_var=$(ls /usr/bin | grep zsh | head -n 1)
if [ $zsh_var != "zsh" ]
then
	echo "zsh does not exist"
	echo "Installing zsh"
	sudo apt install zsh
else
	echo "zsh exists"
fi

# change default shell to zsh
chsh -s $(which zsh)

# check if curl is installed
# install if not installed already
curl_var=$(ls /usr/bin | grep curl | head -n 1)
if [ $curl_var != "curl" ]
then
	echo "curl does not exist"
	echo "Installing curl"
	sudo apt install curl
else
	echo "curl exists"
fi

# check if git is installed
# install if not installed alread
git_var=$(ls /usr/bin | grep git | head -n 1)
if [ $git_var != "git" ]
then
	echo "git does not exist"
	echo "Installing git"
	sudo apt install git
else
	echo "git exists"
fi



if [ -f ~/.oh-my-zsh ]
then
	echo "oh-my-zsh does not exist"
	echo "installing oh-my-zsh"
	sh -c sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
	echo "oh-my-zsh exists"
fi

# check if vim exists
# install if doesnt exist already
vim_var=$(ls /usr/bin | grep rvim | head -n 1)
if [ $vim_var != "rvim" ]
then
	echo "vim does not exist"
	echo "installing vim"
	sudo apt install vim
else
	echo "vim exists"
fi

if [ -f ~/.vimrc ]
then
	echo "creating .vimrc"
	touch ~/.vimrc
else
	echo "~/.vimrc exists"
fi

if [ -f ~/.vim/bundle ]
then
	echo "vim bundle does not exist"
	echo "installing vim bundle"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
	echo "vundle exists"
fi

cat vimrc > ~/.vimrc
cat zshrc > ~/.zshrc

echo "To save changes, source .vimrc and .zshrc"
echo "to get vim changes, in vim run :source % and :PluginInstall"





