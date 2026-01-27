#!/bin/sh

alias tree='tree -a -I .git'
alias la='ls -la'
alias ll='ls -1'
alias mv='mv -v'
alias v='nvim'
alias upg='sudo pacman -Suy && yay -Suy --no-confirm'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
alias song='yt-dlp -x --audio-format mp3 -o "$HOME/media/music/%(channel)s - %(title)s.%(ext)s" --embed-thumbnail --embed-metadata --extractor-args "youtube:player-client=default,-tv_simply" --cookies-from-browser firefox'
alias calc='qalc'
alias backup='rsync -avh --info=progress2 media personal school work notes /mnt/nas'
alias fix_hyprlock="hyprctl --instance 0 'keyword misc:allow_session_lock_restore 1' && hyprctl --instance 0 'dispatch exec hyprlock'"
alias lock="$HOME/.local/bin/hyprlock_idle"
alias dir_to_avif="$HOME/.local/bin/dir_to_avif"
alias dir_to_png="$HOME/.local/bin/dir_to_png"
alias dir_to_webp="$HOME/.local/bin/dir_to_webp"
alias dir_to_mp4="$HOME/.local/bin/dir_to_mp4"
alias unzip_to_matching_dir="$HOME/.local/bin/unzip_to_matching_dir"
alias weather="curl wttr.in"
