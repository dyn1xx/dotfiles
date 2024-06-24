#!/bin/sh

alias tree='tree -a -I .git'
alias la='ls -la'
alias ll='ls -1'
alias v='nvim'
alias upg='sudo pacman -Suy'
alias lf='lfcd'
alias zathura='$HOME/.local/bin/zaread'
alias mpv_webcam='mpv av:v417:/dev/video4 --profile=low-latency --untimed'
alias bl='bluetuith'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
alias song='yt-dlp -x --audio-format mp3 -o "~/media/music/%(channel)s - %(title)s.%(ext)s" '
