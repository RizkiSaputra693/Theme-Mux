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

#!/system/xbin/bash
clear
blue='\e[1;34m'
green='\e[1;32m'                                        
purple='\[1;35m'
cyan='\e[1;36m'
red='\e[1;31m'
white='\e[1;37m'                                           
yellow='\e[1;33m'

sleep 1

echo "\033[32;1m========================================================"
toilet -f standard -F gay "Theme-Mux"
echo "\033[32;1m========================================================"

sleep 1

echo "\033[35;1m Tools Spaming"

sleep 1

echo "\033[32;1m Author: Mr.BrPinG"

sleep 1

echo "\033[36;1m Kontak : barping789@gmail.com"

sleep 1

echo "\033[33;1m AndroSec1337 Cyber Team"

sleep 1

echo "\033[33;1m Theme Yang Tersedia :"
$HOME/.termux/colors.sh

echo "\033[33;1m Theme Yang Tersedia :"
$HOME/.termux/fonts.sh

echo "Please restart Termux app..."

exit
