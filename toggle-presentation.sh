#!/bin/bash

if "$(xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode)" = "true"
then
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -T
	notify-send "Presentation-mode toggled off"
else
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -T
	notify-send "Presentation-mode toggled on"
fi
