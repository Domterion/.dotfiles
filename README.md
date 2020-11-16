## **.dotfiles**

i3-gaps on Ubuntu

![desktop](./screenshot.png)

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
$ stow polybar (or i3, x, zsh, compton, nvim)
```

### **Details**

**Wallpaper**

Wallpaper used is called "background.png", the theme is based around this. If youre going to use it, make sure the mode is tiling.

**Fonts**:
* [Font-Awesome](https://github.com/FortAwesome/Font-Awesome) 
    * used for polybar icons and i3bar if used
* [System San Francisco](https://github.com/supermarin/YosemiteSanFranciscoFont)
    * i3 font and polybar
