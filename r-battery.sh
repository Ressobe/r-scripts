#!/bin/bash

battery=$(cat /sys/class/power_supply/BAT0/capacity)

if (( $battery >= 80 )); then

		echo " $battery%"

elif (( $battery < 80 && $battery >= 50 )); then
		
		echo " $battery%"

elif (( $battery < 50 && $battery >= 20 )); then
		
		echo " $battery%"

elif (( $battery < 20 )); then
		
		echo " $battery%"

fi
