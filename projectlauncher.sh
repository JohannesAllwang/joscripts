#!/bin/env zsh

# Options for powermenu
jolymer="Jolymer: polymer stuff"
website="johannes-allwang website"
reports="Reports for phd"
qtile="qtile config"
nvim="Neovim config"
toni="Toni ist eine Hure!"
scripts="scripts for a better computer experience"
wezterm="wezterm config file"

# Get answer from user via rofi
selected_option=$(echo "
$jolymer
$website
$reports
$qtile
$nvim
$toni
$scripts
$wezterm" | rofi -dmenu\
                  -i\
                  -p "Projects"\
                  -font "Cascadia Code 22"\
                  -lines 5\
                  -line-margin 3\
                  -line-padding 10\
                  -scrollbar-width "0" )
                  # -width "15"\
                  # -config "~/.config/rofi/powermenu.rasi"\

# Do something based on selected option
if [ "$selected_option" == "$jolymer" ]
then
    wezterm start --cwd=/home/johannes/jojects/jolymer/src/jolymer/ -- nvim

elif [ "$selected_option" == "$website" ]
then
    wezter start --cwd=/home/johannes/jojects/jowebsite/ -- nvim
elif [ "$selected_option" == "$reports" ]
then
    wezterm start --cwd=/home/johannes/jophd/reports/ -- nvim
elif [ "$selected_option" == "$qtile" ]
then
    wezterm start --cwd=/home/johannes/.config/qtile/ -- nvim config.py
elif [ "$selected_option" == "$nvim" ]
then
    wezterm start --cwd=/home/johannes/.config/nvim/ -- nvim init.lua
elif [ "$selected_option" == "$toni" ]
then
    wezterm start -- cowsay -f head-in 'Toni ist im Arsch'
elif [ "$selected_option" == "$scripts" ]
then
    wezterm start --cwd=/home/johannes/jojects/joscripts/ -- nvim
elif [ "$selected_option" == "$wezterm" ]
then
    wezterm start --cwd=/home/johannes/.config/wezterm/ -- nvim wezterm.lua
else
    echo "No match"
fi
