#!/bin/bash

now=$(date +"%H")
lwd=$pwd

cd ~/.config/kitty/
if (( $now >= 19 )); then
	echo 'Setting dark theme...'
	cat onehalfdark.conf > current_theme.conf
elif (( $now >= 8 )); then
	echo 'Setting light theme...'
	cat onehalflight.conf > current_theme.conf
else cat onehalfdark.conf > current_theme.conf
fi

cd $pwd
