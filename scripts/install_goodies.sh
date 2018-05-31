#!/bin/bash

#install from apt
apt-get install git-core tmux vim curl gnome-tweak-tool gpick cheese kazam silversearcher-ag tree -y

#install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

#set nvm in bash_profile
#echo "export NVM_DIR=\"\$HOME/.nvm\"" >> ~/.bash_profile
#echo "[ -s \"\$NVM_DIR/nvm.sh\" ] && \\. \"\$NVM_DIR/nvm.sh\"  # This loads nvm" >> ~/.bash_profile

#install vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#copy vim config its path
cp .vimrc ~/.vimrc

#fix ownership of .vim folder
chown ${USER}:${USER} -R ~/.vim

#copy tmux config to its path
cp .tmux.conf ~/.tmux.conf

echo "You may want to change your terminal background color to #262626, to match vim bg"
echo "Also, open ~/.vimrc and run the command :PluginInstall to use vim configuration"

#source ~/.bash_profile
