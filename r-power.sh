#!/bin/bash

function conf () {
	declare -a yesno=(
		" yes"
		" no"
	)
			nn=$(printf '%s\n' "${yesno[@]}" | dmenu -p "are you sure?" -i )
			if [[ "$nn" == " no"  ]]; then
				exit 1
			elif [[ "$nn" == " yes"  ]]; then
				return 1
			else 
				exit 1
			fi
}

declare -a options=(
	" poweroff"
	" reboot"
	" lock"
	" hibernate"
)

choice=$(printf '%s\n' "${options[@]}" | dmenu -i -p "system:" )  

case $choice in
	" poweroff")
	 		conf; sudo poweroff
			;;
	" reboot")
			conf; sudo reboot
			;;
	" lock")
			conf; slock
			;;
	" hibernate")
			conf;	echo mem | sudo tee /sys/power/state
			;;
	*)
			exit 1
			;;
esac


