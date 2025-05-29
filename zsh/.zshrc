# Path to dotfiles zsh config
ZSH_CONFIG_DIR="${HOME}/.config/zsh"

# Load exports
source "${ZSH_CONFIG_DIR}/exports.zsh"

# Load aliases
source "${ZSH_CONFIG_DIR}/aliases.zsh"

# Load paths
source "${ZSH_CONFIG_DIR}/path.zsh"

# Load functions (optional)
[[ -f "${ZSH_CONFIG_DIR}/functions.zsh" ]] && source "${ZSH_CONFIG_DIR}/functions.zsh"

# Load plugins (optional)
[[ -f "${ZSH_CONFIG_DIR}/plugins.zsh" ]] && source "${ZSH_CONFIG_DIR}/plugins.zsh"

# Homebrew (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Starship prompt
eval "$(starship init zsh)"

