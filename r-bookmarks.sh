#!/bin/bash

browser="brave"

declare -a options=(
	"https://www.youtube.com/"
	"https://archlinux.org/"
	"https://suckless.org/"
	"https://github.com/"
)

choice=$(printf '%s\n' "${options[@]}" | dmenu -i -p "bookmarks:" )  
if [ -z "$choice" ]; then
	exit 1 
else
	brave $choice
fi
