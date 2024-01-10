# Autostart sway after login
if [ "$(tty)" = "/dev/tty1" ]; then
    exec dbus-run-session sway
fi

# Default apps
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"

# Adds ~/.local/bin and subfolders to $PATH
export PATH="$PATH:/home/v/.local/share/go/bin:${$(find ~/.local/bin -maxdepth 1 -type d -printf %p:)%%:}"

# Cleaning up home dir
export ZDOTDIR="$HOME/.config/zsh"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"

# Locale
export LC_ALL=en_US.UTF-8
