sudo apt install zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sed -i -- 's/plugins=(git)/plugins=(zsh-syntax-highlighting git zsh-autosuggestions )/g' ~/.zshrc
sed -i -- 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/g' ~/.zshrc

chsh -s /bin/zsh
# add zprofile
zfile=~/.zprofile
if test -f "$zfile"; then
    if grep -Fxq 'source ~/.profile"' $zfile
        then
            # code if found
            echo "path already exists"
        else
            echo "source ~/.profile" >> $zfile
    fi
else
        touch $zfile
        echo "source ~/.profile" >> $zfile
        echo "create .zprofile"
fi