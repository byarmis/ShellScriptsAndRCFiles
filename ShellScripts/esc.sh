#!/bin/bash

# Sets it so that holding the Caps Lock key gives you Ctrl 
# and tapping it gives you Esc
setxkbmap -option ctrl:nocaps
/usr/bin/xcape -e 'Control_L=Escape'

