#!/data/data/com.termux/files/usr/bin/bash
termux-setup-storage

apt update
apt install -y git zsh
git clone https://github.com/RizkiSaputra693/Theme-Mux.git $HOME/Theme-Mux --depth 1

rm -fr $HOME/termux
cp -R $HOME/Theme-Mux/termux $HOME/termux

git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh --depth 1
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc
sed -i '/^ZSH_THEME/d' $HOME/.zshrc
sed -i '1iZSH_THEME="agnoster"' $HOME/.zshrc
chsh -s zsh

echo "oh-my-zsh install complete!\nChoose your color scheme now~"
$HOME/.termux/colors.sh

echo "Choose your font now~"
$HOME/.termux/fonts.sh

echo "Please restart Termux app..."

exit
