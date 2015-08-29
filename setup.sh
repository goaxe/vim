#!/bin/bash
echo "updateing submodule ..."
git submodule update --init

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
ln -s ~/.vim/.vimrc ~/.vimrc

exit 0
