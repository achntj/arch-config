# Readme in progress

# After install and mount

```
sudo pacman -S xorg xorg-xinit xclip xbindkeys dolphin clang cmake make gcc konsole zsh ttf-firacode-nerd, ttf-dejavu, ttf-font-awesome noto-fonts, noto-fonts-emoji pulseaudio pulseaudio-alsa alsa-utils
```

- If os-prober will fail to detect windows

```
sudo pacman -Syu fuse3
```

- Clone this Repo (/arch-config)

## Set symlinks and time date

- Create symlinks
```
ln -sf ~/.config/.xinitrc ~/.xinitc
ln -s ~/.config/zsh/.zshrc ~/.zshrc
ln -s ~/.config/zsh/.zprofile ~/.zprofile
```

- Set NTP

```
sudo timedatectl set-ntp true
```

- Some more packages

```
sudo pacman -Syu neovim feh picom
```

` Run sudo make clean install in dwm, menu, st, slstatus

## Change Shell
```
chsh -s $(which zsh)
```

-Restart

- Setup Audio

```
systemctl --user enable pulseaudio
# pulseaudio start
alsamixer
```

- Bind all keys

```
xbindkeysrc
```

## Setup Nvim

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- Open packer.lua, run :so command. Then Run :PackerInstall / :PackerSync

## AUR Helper

-Install yay

```
sudo pacman -S --needed git base-devel && cd ~ && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

## Other software

- Browser

```
yay -S zen-browser-bin
```

