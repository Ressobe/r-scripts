#!/bin/bash
terminal="alacritty"
wallpaper_dir=$HOME/wallpapers
cd $wallpaper_dir &&  sxiv -trqo * | xargs  wal -i  && r-suckless.sh && notify-send -t 3000 "Update Colorscheme"


