#!/bin/env bash

# Options for powermenu
website="Website"
email="johannes@it-allwang.de"
bitcoin="Bitcoin"
monero="Monero"
wikipedia="Wikipedia"
toni="Toni ist eine Hure!"
scholar="Google Scholar"

# Get answer from user via rofi
selected_option=$(echo "
$website
$email
$bitcoin
$monero
$wikipedia
$toni
$scholar" | rofi -dmenu\
                  -i\
                  -p "Bookmarks"\
                  -font "Cascadia Code 26"\
                  -lines 5\
                  -line-margin 3\
                  -line-padding 10\
                  -scrollbar-width "0" )
                  # -width "15"\
                  # -config "~/.config/rofi/powermenu.rasi"\

# Do something based on selected option
if [ "$selected_option" == "$website" ]
then
    bookmark='johannes-allwang.de'

elif [ "$selected_option" == "$email" ]
then
    bookmark='johannes@it-allwang.de'
elif [ "$selected_option" == "$bitcoin" ]
then
    bookmark='bitcoin'
elif [ "$selected_option" == "$monero" ]
then
    bookmark='monero'
elif [ "$selected_option" == "$wikipedia" ]
then
    bookmark='wikipedia.com'
elif [ "$selected_option" == "$scholar" ]
then
    bookmark='scholar.google.com'
elif [ "$selected_option" == "$toni" ]
then
    bookmark='Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!Toni ist eine Hure! Und ein Aschloch!'
else
    echo "No match"
fi

xdotool type "$bookmark"
