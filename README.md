## **.dotfiles**

bspwm on Ubuntu

![desktop](./desktop.png)

Current setup: Picom, BSPWM, SXHKD, Kitty, NVim, Rofi and x.

Uses [GNU Stow](https://www.gnu.org/software/stow/)

### **Usage**

To use make sure you have GNU Stow:

Debian: `$ apt install stow`

```
# Go to your home dir
$ cd ~

# Clone the repo
$ git clone https://github.com/Domterion/.dotfiles

# Go into dotfiles repo
$ cd .dotfiles

# Install the desired dotfiles
$ stow polybar (or i3, x, zsh, compton, nvim, rofi, bspwm, sxhkd, picom, kitty, tmux, tmuxp)
```

### **Details**

**Wallpaper**

Wallpaper used is called "background", the theme is based around this. If youre going to use it, make sure the mode is tiling.

**All the things**:

**[compton](https://github.com/chjj/compton)** - compositor

**[picom](https://github.com/ibhagwan/picom)** - rounded corner compositor

**[i3-gaps](https://github.com/Airblader/i3)** - tiling WM

**[bspwm](https://github.com/baskerville/bspwm)** - tiling WM

**[sxhkd](https://github.com/baskerville/sxhkd)** - hotkey daemon for bspwm

**[neovim](https://github.com/neovim/neovim)** - text editor

**[polybar](https://github.com/polybar/polybar)** - status bar to replace i3bar

**[rofi](https://github.com/davatorium/rofi)** - dmenu replacement

**[zsh](https://github.com/zsh-users/zsh)** - shell of choice

**[kitty](https://sw.kovidgoyal.net/kitty/index.html)** - terminal emulator

**[tmux](https://github.com/tmux/tmux)** - terminal multiplexer

**[ripgrep]](https://github.com/BurntSushi/ripgrep)** - used for live grep in neovim config

**Fonts**

**[font-awesome](https://github.com/FortAwesome/Font-Awesome)** - used for polybar icons

**[system san francisco](https://github.com/supermarin/YosemiteSanFranciscoFont)** - i3/system font and rofi

**[SauceCodePro Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro)** - system font and polybar. need bold, italic and regular

**[Iosevka Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Iosevka)** - polybar
