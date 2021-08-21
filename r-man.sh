#!/bin/bash

man=$(man -k . | awk  '{print $1}' | dmenu -i -p "search manpages:")
if [ -z "$man" ]; then
	exit 1 
else
alacritty -e man $man
fi
