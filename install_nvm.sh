cp -r .nvm ~/.nvm

file=~/.zshrc
echo 'export NVM_DIR=~/.nvm' >> $file
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> $file