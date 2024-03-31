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
export PATH="$PATH:/home/v/.cargo/bin"

# Cleaning up home dir
export ZDOTDIR="$HOME/.config/zsh"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

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
