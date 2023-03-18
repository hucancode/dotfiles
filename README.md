# Hello 👋 

## This is my personal workspace setup
![It works on my machine](https://shields.io/badge/works_on-my_machine-black?style=for-the-badge&logo=gnome-terminal&logoColor=F0F0F0) 
![Powered by Arch](https://shields.io/badge/powered_by-arch-skyblue?style=for-the-badge&logo=arch-linux&logoColor=F0F0F0)

## ✨ Features:
- 📦 Window manager [openbox](https://wiki.archlinux.org/title/openbox)
- 🔑 Display manager (the login thing) [lightdm](https://wiki.archlinux.org/title/lightdm)
- 📊 Status bar [eww](https://github.com/elkowar/eww)
- 🚀 Program launcher [rofi](https://wiki.archlinux.org/title/rofi)
- 🔔 Notification panel [dunst](https://wiki.archlinux.org/title/dunst)
- 📂 File manager [lf](https://github.com/gokcehan/lf) and [Thunar](https://docs.xfce.org/xfce/thunar/start)
- 🌏 Browser [Vieb](https://vieb.dev/)
- 📋 Text editor [neovim](https://neovim.io/)
- 🐱 Shell and terminal emulator [fish](https://wiki.archlinux.org/title/fish), [kitty](https://wiki.archlinux.org/title/Kitty)
- 🎧 Music player [mpd](https://wiki.archlinux.org/title/Music_Player_Daemon)
# 👀 Screenshots
![](Pictures/Screenshots/1.png)
![](Pictures/Screenshots/2.png)
![](Pictures/Screenshots/3.png)
![](Pictures/Screenshots/4.png)
![](Pictures/Screenshots/5.png)
# 🚀 Installation
## 🐌 Checkout source configuration
```bash
sudo pacman -Syu fish git
git init
git remote add origin https://github.com/hucancode/home
git fetch
git checkout -t origin/main
git submodule update --init --recursive
```
After checking out, you either install the packages needed, or run my script to install those packages for you.
## 🐌 For the lazy, use this script
```bash
chmod +x rice.sh && fish ./rice.sh
```
Things supposed to go smoothly. You can skip next sections entirely.
## 🐚 Change default shell to `fish`
```bash
sudo pacman -Syu fish
chsh -s $(which fish)
```
and then restart your terminal.
## 🌾 Copy `openbox` icons
```fish
sudo mkdir /usr/share/openbox; sudo mv ~/.config/openbox/icons /usr/share/openbox
```
## 📦 Install softwares
Install `yay`
```fish
git clone https://aur.archlinux.org/yay-bin.git
begin cd yay-bin; and makepkg -si; end
```
Install required packages
```fish
set THEME "lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings arc-gtk-theme"
set FONTS "ttf-fira-code noto-fonts noto-fonts-cjk noto-fonts-emoji"
set WM "openbox rofi yad dunst xdg-user-dirs nitrogen xclip xdotool xorg-xsetroot maim"
set WM_AUR "i3lock-color eww-git ksuperkey"
set MEDIA "alsa-utils ffmpeg mpd mpc mpv viewnior"
set MEDIA_AUR "vieb-bin"
set FILE_MANAGER_AUR "lf"
set TERMINAL "kitty neovim fzf fd ripgrep exa git-delta"
set KEYRING "gnome-keyring libgnome-keyring"
sudo pacman -S $THEME $FONTS $WM $MEDIA $TERMINAL $KEYRING
yay -S $WM_AUR MEDIA_AUR $FILE_MANAGER_AUR
```
## 🔑 Config `lightdm`
Copy avatar and wallpaper to somewhere `lightdm` have access to.
```fish
curl -L -o avatar.png https://github.com/hucancode.png; and sudo cp {avatar.png,.config/lightdm/wallpaper.jpg} /usr/share/lightdm-gtk-greeter-settings; and rm avatar.png
sudo mkdir -p /etc/lightdm
sudo cp .config/lightdm/lightdm-gtk-greeter.conf /etc/lightdm
```
Set `lightdm` as your default display manager.
```fish
systemctl enable lightdm
```
Enable `lightdm-gtk-greeter` (`lightdm` default to gtk greeter, but just in case something went wrong, please check `lightdm.conf`)
```fish
vi /etc/lightdm/lightdm.conf
# enable [Seat:*]
# ...
# greeter-session=lightdm-gtk-greeter
# ...
```
