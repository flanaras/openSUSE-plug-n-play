#!/bin/bash

# Light
./i3-light

# Music controll buttons
packages="playerctl "

# Screenshot
packages="$packages scrot"

# Install packages
zypper in $packages
