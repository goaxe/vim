#!/bin/bash
echo "updateing submodule ..."
git submodule update --init --recursive

echo "copying font to system ..."
cp ~/.vim/font/YaHei Consolas Hybrid.ttf /usr/share/fonts/truetype

echo "updateing for font cache ..."
fc-cache -vf

echo "done! change the font of your terminal to YaHei Consolas Hybrid and enjoy it~"

echo "mv exist vim files ..."
if [ -d ~/.vim ]; then
    mv ~/.vim ~/.vim.bak
fi
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi

echo "copying qsword's vim files ...'"
mkdir ~/.vim
cp -r ./* ~/.vim/
cp .vimrc ~/.vimrc

echo "compile YouCompleteMe ..."
yum install -y llvm
yum install -y boost
yum install -y cmake

cd /etc/yum.repos.d
wget http://people.centos.org/tru/devtools-1.1/devtools-1.1.repo 
yum --enablerepo=testing-1.1-devtools-6 install -y devtoolset-1.1-gcc devtoolset-1.1-gcc-c++
/opt/centos/devtoolset-1.1/root/usr/bin/
ln -s /opt/centos/devtoolset-1.1/root/usr/bin/* /usr/local/bin/
hash -r

cd ~/.vim/bundle/YouCompleteMe
#./install.sh --clang-completer --system-libclang --system-boost

exit 0
