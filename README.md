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
- 📂 File manager [yazi](https://yazi-rs.github.io/) and [thunar](https://docs.xfce.org/xfce/thunar/start)
- 📋 Text editor [helix](https://helix-editor.com/) and [zed](https://zed.dev/)
- 💻 Shell and terminal emulator [fish](https://wiki.archlinux.org/title/fish), [tmux](https://github.com/tmux/tmux), [alacritty](https://ghostty.org/)
- 🎧 Music player [mpd](https://wiki.archlinux.org/title/Music_Player_Daemon) and [ario](https://ario-player.sourceforge.net/)

# 👀 Screenshots

![](Pictures/Screenshots/1.png)
![](Pictures/Screenshots/2.png)
![](Pictures/Screenshots/3.png)
![](Pictures/Screenshots/4.png)
![](Pictures/Screenshots/5.png)

# 🚀 Installation

## 🐌 Arch Linux

This script will check out my git repo at your home directory and install all software
```bash
curl https://raw.githubusercontent.com/hucancode/home/main/rice.sh | sh
```
Or install only cli tool with this (useful if you are on WSL)
```bash
curl https://raw.githubusercontent.com/hucancode/home/main/rice-cli.sh | sh
```

## 🐌 Other distro

Please find equivalent of these packages on your system
```
lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings arc-gtk-theme
ttf-fira-code noto-fonts noto-fonts-cjk noto-fonts-emoji
openbox rofi yad dunst nitrogen xclip xdotool maim
i3lock-color eww ksuperkey chromium thunar yazi
ghostty neovim exa git-delta rustup zed
```

## 🐚 After install

You may want to change your default shell to `fish`
```bash
chsh -s /usr/bin/fish
```

## Shortcuts
### Application launcher
```
Super (or Alt + F1) - Application List
Super + Enter - Open terminal emulator
Super + W - Open browser
Super + X - Power menu
```
### Screenshot
```
Print Screen - Screenshot (Screen)
Alt + Print Screen - Screenshot (Window)
Super + S - Screenshot Menu
```
### Window management
```
Super + Q - Close window
Super + Up/Down/Left/Right - Move window
Super + Left mouse - Move window
Super + Right mouse - Resize window
Super + 1/2/3/4/5/6 - Switch workspace 1~6
Super + Shift + 1/2/3/4/5/6 - Move window to workspace 1~6
Alt + Tab - Cycle window focus
Alt + Shift + Tab - Cycle window focus backward
```
