# Init Zap package manager
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# History in cache directory
HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_CACHE_DIR/zsh/history"

# Aliases
plug "$XDG_CONFIG_HOME/zsh/aliases.zsh"

# Options
unsetopt menu_complete
unsetopt flowcontrol

setopt prompt_subst
setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# Plugins
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "wintermi/zsh-starship"
plug "zap-zsh/vim"
plug "Aloxaf/fzf-tab"

plug "$XDG_CONFIG_HOME/zsh/colored-man-pages.plugin.zsh"

# Load and initialise completion system
autoload -Uz compinit
compinit

# Starship config
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship.toml"

# Start tmux if not already in tmux
[ -n "$TMUX" ] || exec tmux new-session -A -s main

# Fix kitty ssh
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
