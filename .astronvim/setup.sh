#!/bin/bash

check_and_backup() {
  [[ -e "$1" ]] && {
    echo "$1 exists, remove (y/n)?"
    read ans
    [[ $ans == "y" ]] && {
      [[ -e "$1".bak ]] && {
        echo "$1".bak exists, aborting
        exit 1
      }
      mv "$1" "$1".bak
    }
  }
}

check_and_backup ~/.config/.nvim
check_and_backup ~/.local/share/nvim
#check_and_backup ~/.local/state/nvim
#check_and_backup ~/.cache/nvim

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
mkdir -p ~/.config/nvim/lua/user
ln -sf $(readlink -f $(dirname $0))/init.lua ~/.config/nvim/lua/user/init.lua
