# Setup after a fresh install (in-progress)

# After install and mount

```
sudo pacman -S xorg xorg-xinit xclip xbindkeys dolphin clang cmake make gcc konsole zsh ttf-firacode-nerd ttf-dejavu ttf-font-awesome noto-fonts noto-fonts-emoji pulseaudio pulseaudio-alsa alsa-utils
```

- If os-prober fails to detect windows

```
sudo pacman -S fuse3
```

- Clone this Repo (/arch-config)

## Set symlinks and time date

- Create symlinks (TODO: Switch to gnu stow)

```
# Symlinks
ln -sf "$HOME/.config/.xinitrc" "$HOME/.xinitrc"
ln -sf "$HOME/.config/zsh/.zshrc" "$HOME/.zshrc"
ln -sf "$HOME/.config/zsh/.zprofile" "$HOME/.zprofile"
ln -sf "$HOME/.config/.xbindkeysrc" "$HOME/.xbindkeysrc"

# Xorg touchpad config
sudo mkdir -p /etc/X11/xorg.conf.d
sudo ln -sf "$HOME/.config/xorg/90-touchpad-accel.conf" \
  /etc/X11/xorg.conf.d/90-touchpad-accel.conf
sudo ln -sf "$HOME/.config/xorg/30-touchpad-natural-scrolling.conf" \
  /etc/X11/xorg.conf.d/30-touchpad-natural-scrolling.conf

```

- Set NTP

```
sudo timedatectl set-ntp true
```

- Some more packages

```
sudo pacman -S neovim feh picom openssh
```

- Run sudo make clean install in dwm, menu, st, slstatus

## Change Shell
```
chsh -s $(which zsh)
```

-Restart

- Change bg
```
feh --bg-fill '/home/achntj/.config/wps/wp-new.png'
```

- Setup Audio

```
systemctl --user enable pulseaudio
# pulseaudio start
alsamixer
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

