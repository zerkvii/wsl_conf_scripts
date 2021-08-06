gofile=~/go1.16.7.linux-amd64.tar.gz
if test -f "$gofile"; then
    echo "file downloaded already"
    else
    wget https://dl.google.com/go/go1.16.7.linux-amd64.tar.gz -P ~/
fi
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ~/go1.16.7.linux-amd64.tar.gz

file=~/.profile
if test -f "$file"; then
    if grep -Fxq 'export PATH=$PATH:/usr/local/go/bin' $file
    then
        # code if found
        echo "path already exists"
    else
        echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
    fi
   
fi
zprofile=~/.zprofile
if test -f "$zprofile"; then
    if grep -Fxq 'export PATH=$PATH:/usr/local/go/bin' $file
        then echo "file already exists"
    else
        echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zprofile
    fi
fi