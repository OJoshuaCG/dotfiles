# - Plugins ---
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-sudo/sudo.plugin.zsh

# - Aliases ---
alias ls="lsd"
alias cat="bat"
alias cls="clear"

# For Kitty terminal:
# - Home, Fin, Supr ---
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
# Alt + Right -> Move cursor to end of right word
bindkey "^[[1;3C" forward-word
# Alt + Left -> Move cursor to begin of left word
bindkey "^[[1;3D" backward-word
