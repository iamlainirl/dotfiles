HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory share_history hist_ignore_all_dups

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#565f89"

ZSH_HIGHLIGHT_STYLES[path]="fg=#7aa2f7"
ZSH_HIGHLIGHT_STYLES[precommand]="fg=#bb9af7"
ZSH_HIGHLIGHT_STYLES[alias]="fg=#e0af68"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=#e0af68"
ZSH_HIGHLIGHT_STYLES[command]="fg=#c0caf5"
ZSH_HIGHLIGHT_STYLES[function]="fg=#7aa2f7"
ZSH_HIGHLIGHT_STYLES[argument]="fg=#c0caf5"
ZSH_HIGHLIGHT_STYLES[globbing]="fg=#bb9af7"
ZSH_HIGHLIGHT_STYLES[option]="fg=#565f89"
ZSH_HIGHLIGHT_STYLES[comment]="fg=#565f89"
ZSH_HIGHLIGHT_STYLES[unknown-token]="fg=#f7768e"

alias update='sudo pacman -Syu'
alias clean='sudo pacman -Sc'
alias hyprconf='nvim ~/.config/hypr/hyprland.conf'
alias waybarconf='nvim ~/.config/waybar/config'
alias kittyconf='nvim ~/.config/kitty/kitty.conf'
alias zshconf='nvim ~/.zshrc && source ~/.zshrc'
alias ls='eza --icons --group-directories-first'
alias ll='eza -l --icons --group-directories-first'
alias la='eza -la --icons --group-directories-first'
alias cat='bat'

# alias gs='git status'
# alias ga='git add'
# alias gc='git commit'
# alias gp='git push'
# alias gl='git log --oneline --graph'

export EDITOR='nvim'
export VISUAL='nvim'
export TERMINAL='kitty'
export BROWSER='brave'

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export QT_QPA_PLATFORMTHEME="qt5ct"
eval "$(dircolors -b)"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.local/bin
export COLORTERM=truecolor

export RADV_PERFTEST=aco
export DXVK_ASYNC=1
export AMD_VULKAN_ICD=RADV
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/radeon_icd.x86_64.json
#export MESA_LOADER_DRIVER_OVERRIDE=radeonsi


eval "$(starship init zsh)"

if [ "$TERM" != "linux" ] && [ -z "$FASTFETCH_SHOWN" ]; then
    fastfetch
    export FASTFETCH_SHOWN=1
fi
