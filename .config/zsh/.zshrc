###=============================###
###------ZSH CONFIGURATION------###
###=============================###



# Powerlevel10k Instant Prompt (MUST remain first)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

###------EDITOR------###
export EDITOR="nvim"
export VISUAL="nvim"

###------HISTORY-----###
export HISTFILE="$HOME/.local/share/zsh/history"
export HISTSIZE=1000000
export SAVEHIST=1000000
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_ALL_DUPS

###------Path Configuration------###
# Homebrew (macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
  # Uncomment if you need shellenv
  # [[ -d /opt/homebrew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export PATH="/usr/local/sbin:$PATH"

###------Zsh Options------###
setopt autocd correct
setopt CORRECT
setopt INTERACTIVE_COMMENTS

###------Completion------###
ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/zsh"
mkdir -p "$ZSH_CACHE_DIR"
autoload -Uz compinit
compinit -d "$ZSH_CACHE_DIR/zcompdump"

###------Aliases------###
[[ -f "$ZDOTDIR/.zsh_aliases" ]] && source "$ZDOTDIR/.zsh_aliases"

###------Plugins------###
source "$ZDOTDIR/.zsh_plugins"

# Powerlevel10k
if [[ -f "/opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  source "/opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme"
elif [[ -f "/usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  # Linux fallback
  source "/usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme"
fi

# p10k config
[[ -f "$ZDOTDIR/.p10k.zsh" ]] && source "$ZDOTDIR/.p10k.zsh"

