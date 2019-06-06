#!/bin/bash

now=$(date +"%H")

if (( $now >= 19 )); then
	export WHICHTHEME=onehalfdark
elif (( $now >= 8 )); then
	export WHICHTHEME=onehalflight
else export WHICHTHEME=onehalfdark
fi
