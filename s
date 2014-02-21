#! /bin/sh

unset UBUNTU_MENUPROXY
LD_PRELOAD=~/.config/sublime-text-3/Packages/User/libsublime-imfix.so /usr/bin/subl $*
