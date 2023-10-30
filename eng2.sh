#!/bin/sh
ibus engine xkb:gb:extd:eng
setxkbmap -option caps:swapescape
xmodmap -e "keycode 135 = Super_R"
