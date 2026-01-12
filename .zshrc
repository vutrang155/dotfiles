export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

setopt SHARE_HISTORY
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

bindkey -v

 autoload -Uz compinit
 compinit

export EDITOR="nvim"
export VISUAL="nvim"
export PROMPT="%B%m%b@%B%n%b:%~ %B%F{214}>%f%b "

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

export PATH=$PATH:$HOME/go/bin

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

. "$HOME/.cargo/env"            
export PATH="$HOME/.local/bin:$PATH"

alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
