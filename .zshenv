# Autostart Hyprland after login
if [ "$(tty)" = "/dev/tty1" ]; then
    start-hyprland
fi

# Default apps
export EDITOR=/usr/bin/nvim
export TERMINAL=/usr/bin/foot
export BROWSER=/usr/bin/firefox

# Adds ~/.local/bin and subfolders to $PATH
export PATH="$PATH:/home/v/.local/share/go/bin:${$(find ~/.local/bin -maxdepth 1 -type d -printf %p:)%%:}"
export PATH="$PATH:/home/v/.cargo/bin"

# Wayland
export OZONE_PLATFORM=wayland
export SDL_VIDEODRIVER=wayland

# Cleaning up home dir
export ZDOTDIR="$HOME/.config/zsh"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_MUSIC_DIR="$HOME/media/music"

export GOPATH="$XDG_DATA_HOME"/go
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export TERMINFO="$XDG_DATA_HOME"/terminfo

export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
export BYOBU_CONFIG_DIR="$XDG_CONFIG_HOME/byobu"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"

export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"

zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

# Locale
export LC_ALL=en_US.UTF-8
