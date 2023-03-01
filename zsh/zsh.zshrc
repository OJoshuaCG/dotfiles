# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [[ -f ~/.dircolors ]] ; then
    eval $(dircolors -b ~/.dircolors)     
elif [[ -f /etc/DIR_COLORS ]] ; then
    eval $(dircolors -b /etc/DIR_COLORS)
fi

# Use powerline
USE_POWERLINE="true"

# Source manjaro-zsh-configuration
# if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
#   source /usr/share/zsh/manjaro-zsh-config
# fi
# Use manjaro zsh prompt
# if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#   source /usr/share/zsh/manjaro-zsh-prompt
# fi

# - Plugins ---
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-sudo/sudo.plugin.zsh

# - Aliases ---
alias ls="lsd"
alias cat="bat"
alias cls="clear"
alias s="kitty +kitten ssh"

# - Environment Variable ---
export CODES="/mnt/Data/codes/"
export UAT="/mnt/Data/UAT/9no/"
export CATFIG="/home/joshua/.config/kitty/kitty.conf"
export P="-p49759"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# Home, Fin, Supr
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
# Alt + Right -> Move cursor to end of right word
bindkey "^[[1;3C" forward-word
# Alt + Left -> Move cursor to begin of left word
bindkey "^[[1;3D" backward-word

# History
HISTFILE=~/.zsh_history
HISTSIZE=200
SAVEHIST=200
setopt appendhistory


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

