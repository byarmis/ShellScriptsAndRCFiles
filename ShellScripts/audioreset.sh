#!/bin/bash

# http://askubuntu.com/questions/160618/audio-stutter-in-in-ubuntu-12-04
# I had stuttering audio, this fixed it
# Saving this here to save myself a Sunday
# afternoon of pulling my hair out in the
# future
killall pulseaudio
pulseaudio --system=1 --daemonize

