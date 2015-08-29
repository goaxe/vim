echo "copying font to system ..."
cp ~/.vim/font/YaHei Consolas Hybrid.ttf /usr/share/fonts/truetype

echo "updateing for font cache ..."
fc-cache -vf

echo "done! change the font of your terminal to YaHei Consolas Hybrid and enjoy it~"

if [-d ~/.vim]; then
    mv ~/.vim ~/.vim.bak
if [-f ~/.vimrc]; then
    mv ~/.vimrc ~/.vimrc.bak

mkdir ~/.vim
cp ./* ~/.vim/
ln -s ~/.vim/.vimrc ~/.vimrc
