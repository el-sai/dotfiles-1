#!/bin/bash

apt-get install git-core tmux vim curl -y
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

echo "export NVM_DIR=\"\$HOME/.nvm\"" >> ~/.bash_profile
echo "[ -s \"\$NVM_DIR/nvm.sh\" ] && \\. \"\$NVM_DIR/nvm.sh\"  # This loads nvm" >> ~/.bash_profile

source ~/.bash_profile
