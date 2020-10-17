## .dotfiles

i3-gaps on Ubuntu

Uses [GNU Stow](https://www.gnu.org/software/stow/)

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
$ stow polybar (or i3, x, zsh, *)
```