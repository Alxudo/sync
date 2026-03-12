#!/usr/bin/bash
#this outputs the list of explicitly installed packages from oldest to newest, pipe this to 'xargs sudo pacman -S' to install them all
expac --timefmt='%Y-%m-%d %T' '%l\t%n\t%w' | sort | grep 'explicit' | awk '{print $3}'
