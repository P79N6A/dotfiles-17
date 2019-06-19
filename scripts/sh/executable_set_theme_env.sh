#!/bin/bash

now=$(date +"%H")
lwd=$pwd

cd ~/.config/kitty/
if (( 10#$now >= 19 )); then
	echo 'Setting dark theme...'
	cat onehalfdark.conf > current_theme.conf
elif (( 10#$now >= 8 )); then
	echo 'Setting light theme...'
	cat onehalflight.conf > current_theme.conf
else cat onehalfdark.conf > current_theme.conf
fi

cd $pwd
