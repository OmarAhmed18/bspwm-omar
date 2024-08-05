sudo pacman -Syu

sudo pacman -S --needed git

git clone https://aur.archlinux.org/yay-git.git

cd yay-git/

makepkg -si

yay -Syu

yay -S --needed nvidia-settings nitrogen gnome-disks-utility gvfs gvfs-gphoto2 thunar thunar-volman thunar-archive-plugin thunar-media-tags-plugin noto-fonts noto-fonts-ar noto-fonts-emoji firefox trizen bspwm polybar sxhkd rofi sddm calc btop picom xreader mpv ristretto pavucontrol pamixer neovim zsh polkit-gnome network-manager-applet fcitx5-im auto-cpufreq spotify-adblock xarchiver xcolor deluge-gtk mousepad alacritty visual-studio-code-bin

cd ../

cp xinitrc ~/.xinitrc

cp zshrc ~/.zshrc

cp xprofile ~/.xprofile

cd config

cp -r * ~/.config

cd ~/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo systemctl enable sddm
