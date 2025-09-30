#!/bin/sh

alias tree='tree -a -I .git'
alias la='ls -la'
alias ll='ls -1'
alias v='nvim'
alias upg='yay -Suy'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
alias song='yt-dlp -x --audio-format mp3 -o "$HOME/media/music/%(channel)s - %(title)s.%(ext)s" --embed-thumbnail --embed-metadata --extractor-args "youtube:player-client=default,-tv_simply"'
alias calc='qalc'
alias backup='rsync -avh --info=progress2 media personal school notes /mnt/nas'
alias fix_hyprlock="hyprctl --instance 0 'keyword misc:allow_session_lock_restore 1' && hyprctl --instance 0 'dispatch exec hyprlock'"
