# ======================
# ZSH CONFIGURATION
# ======================

#echo "ZSH config is loading!"
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt share_history
setopt hist_ignore_all_dups


autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#плагины не забыть
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5E81AC"
ZSH_HIGHLIGHT_STYLES[path]="fg=#81A1C1"
ZSH_HIGHLIGHT_STYLES[precommand]="fg=#A3BE8C"

eval "$(starship init zsh)"


alias update='sudo pacman -Syu'
alias clean='sudo pacman -Sc'
alias hyprconf='nvim ~/.config/hypr/hyprland.conf'
alias waybarconf='nvim ~/.config/waybar/config'
alias footconf='nvim ~/.config/foot/foot.ini'
alias zshconf='nvim ~/.zshrc && source ~/.zshrc'

#потом раскоментить
#alias gs='git status'
#alias ga='git add'
#alias gc='git commit'
#alias gp='git push'
#alias gl='git log --oneline --graph'


export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='foot'
export BROWSER='chromium'

eval "$(dircolors -b)"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export COLORTERM=truecolor


if [ "$TERM" != "linux" ] && [ -z "$FASTFETCH_SHOWN" ]; then
    fastfetch
    export FASTFETCH_SHOWN=1
fi
