#!/bin/bash
echo "update submodule ..."
git submodule update --init --recursive

echo "copy font to system ..."
cp ~/.vim/font/YaHei Consolas Hybrid.ttf /usr/share/fonts/truetype

echo "update for font cache ..."
fc-cache -vf

echo "rename exist vim files ..."
if [ -d ~/.vim ]; then
    mv ~/.vim ~/.vim.bak
fi
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi

echo "copy qsword's vim files ...'"
mkdir ~/.vim
cp -r ./* ~/.vim/
cp .vimrc ~/.vimrc

echo -e "before use YCM, please read https://github.com/Valloric/YouCompleteMe#full-installation-guide~\n"

echo -e "To me, vi is Zen. 
To use vi is to practice zen.
Every command is a koan.
Profound to the user,
unintelligible to the uninitiated.
You discover truth every time you use it.\n"

echo -e "vi 之大道如我心之禅，
vi 之漫路即为禅修，
vi 之命令禅印于心，
未得此道者视之怪诞，
与之为伴者洞其真谛，
长修此道者巨变人生。\n"

#echo "compile YouCompleteMe ..."
#yum install -y llvm
#yum install -y boost
#yum install -y cmake

#cd /etc/yum.repos.d
#wget http://people.centos.org/tru/devtools-1.1/devtools-1.1.repo 
#yum --enablerepo=testing-1.1-devtools-6 install -y devtoolset-1.1-gcc devtoolset-1.1-gcc-c++
#/opt/centos/devtoolset-1.1/root/usr/bin/
#ln -s /opt/centos/devtoolset-1.1/root/usr/bin/* /usr/local/bin/
#hash -r

#cd ~/.vim/bundle/YouCompleteMe
#./install.sh --clang-completer --system-libclang --system-boost

exit 0
