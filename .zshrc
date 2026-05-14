# XDG Base Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# History
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
setopt SHARE_HISTORY

bindkey -v

autoload -Uz compinit
compinit

export EDITOR="nvim"
export VISUAL="nvim"
export PROMPT="%B%m%b@%B%n%b:%~ %B%F{214}>%f%b "

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

# PATH
export PATH="$HOME/.local/bin:$HOME/.config/local/bin:$HOME/go/bin:$PATH"

# Rust
. "$HOME/.cargo/env"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# NVM – resolve default node to PATH without sourcing nvm.sh on every shell
export NVM_DIR="$HOME/.config/nvm"
() {
  local ver node_bin
  ver="$(< "$NVM_DIR/alias/default")" 2>/dev/null || return
  node_bin="$(command ls -d "$NVM_DIR/versions/node/v${ver}".* 2>/dev/null | sort -V | tail -1)/bin"
  [[ -d "$node_bin" ]] && path=("$node_bin" $path)
}
nvm() { unset -f nvm; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; nvm "$@"; }

# fzf (Ctrl+R history, Ctrl+T files, Alt+C cd)
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Syntax highlighting (must be last plugin)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'

# Bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
