#prerequisition
sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev


# install pyenv
curl https://pyenv.run | bash

#echo to profile
file=~/.profile
if test -f "$file"; then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
    echo 'eval "$(pyenv init --path)"' >> ~/.profile
fi
zprofile=~/.zprofile
if test -f "$zprofile"; then
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zprofile
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zprofile
    echo 'eval "$(pyenv init --path)"' >> ~/.zprofile
fi
# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
