#!/bin/sh


# requires the zenity library:
#   https://gitlab.gnome.org/GNOME/zenity

# run with:
#   sh helloworld.sh


zenity --info \
       --title="Hello World" \
       --text="Hello World!"
