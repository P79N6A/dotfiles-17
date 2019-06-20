#!/bin/bash

# getting current time and defaul working directory
now=$(date +"%H")
lwd=$pwd

# setting the kitty theme appropriately
cd ~/.config/kitty/
if (( 10#$now >= 19 )); then
	echo 'Setting dark theme...'
	cat onehalfdark.conf > current_theme.conf
elif (( 10#$now >= 8 )); then
	echo 'Setting light theme...'
	cat onehalflight.conf > current_theme.conf
else cat onehalfdark.conf > current_theme.conf
fi

# setting the tmuxline theme appropriately
cd ~
if (( 10#$now >= 19 )); then
	echo 'Setting dark theme...'
	cat .tmuxline.onehalfdark.conf > .tmuxline.conf
elif (( 10#$now >= 8 )); then
	echo 'Setting light theme...'
	cat .tmuxline.onehalflight.conf > .tmuxline.conf
else cat .tmuxline.onehalfdark.conf > .tmuxline.conf
fi

cd $lwd
