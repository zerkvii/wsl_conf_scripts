#prerequisition
sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev npm


# install pyenv
curl https://pyenv.run | bash

# echo to profile
file=~/.profile
if test -f "$file"; then
    if grep -Fxq 'export PYENV_ROOT="$HOME/.pyenv"' $file
    then
        # code if found
        echo "path already exists"
    else
        echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $file
        echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $file
        echo 'eval "$(pyenv init -)"' >> $file
        echo 'eval "$(pyenv virtualenv-init -)"' >> $file

    fi
   
fi
zfile=~/.zprofile
if test -f "$zfile"; then
    if grep -Fxq 'export PYENV_ROOT="$HOME/.pyenv"' $zfile
        then echo "file already exists"
    else
        echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $zfile
        echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $zfile
        echo 'eval "$(pyenv init -)"' >> $zfile
        echo 'eval "$(pyenv virtualenv-init -)"' >> $zfile

    fi
    else
    touch $zfile
     echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $zfile
     echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $zfile
     echo 'eval "$(pyenv init -)"' >> $zfile
     echo 'eval "$(pyenv virtualenv-init -)"' >> $zfile

fi
# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

 if grep -Fxq 'export NVM_DIR="$HOME/.nvm"' $zfile
    then echo "already add to .zprofile"
    else
    echo 'export NVM_DIR="$HOME/.nvm"' >> $zfile
    echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >>$zfile
    echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion' >>$zfile
fi