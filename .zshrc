# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Zoxide
eval "$(zoxide init zsh)"


# EZA
alias ls="eza --long --color=always --icons=always --no-user" 


# Atuin
. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh)"


# FZF
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

export FZF_DEFAULT_OPTS="--height 50% --layout=default --border --color=hl:#2dd4bf"

# Setup fzf previews
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"
