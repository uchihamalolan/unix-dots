# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/malolan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# fnm
export PATH="/home/malolan/.local/share/fnm:$PATH"
eval "`fnm env`"
source ~/.config/zsh/fnm-completions.sh
eval "$(fnm env --use-on-cd)"

# bun
export BUN_INSTALL="$HOME/.local/bin/bun"
export PATH=$BUN_INSTALL/bin:$PATH

# rust
export CARGO_HOME="$HOME/.local/share/cargo"
export RUSTUP_HOME="$HOME/.config/rustup"
export PATH="$CARGO_HOME/bin:$PATH"
source "$CARGO_HOME/env"

# gnupg
export GNUPGHOME="$HOME/.local/share/gnupg" 

# gihub
source ~/.config/zsh/gh-completions.sh

# the end
eval "$(starship init zsh)"

# shortcuts
alias zj="zellij"
alias zshr="source ~/.config/zsh/.zshrc"
alias zshrc="hx ~/.config/zsh/.zshrc"
alias dtf='/usr/bin/git --git-dir=/home/malolan/.dotfiles/ --work-tree=/home/malolan'

# zellij
eval "$(zellij setup --generate-auto-start zsh)"

# zoxide
alias z="zoxide"
alias l="exa -la"
