# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[red]%}@%{$fg[blue]%}%M %{$fg[cyan]%}%1~%{$fg[red]%}]%{$reset_color%}$%b "

zmodload zsh/complist
#autoload -Uz compinit && compinit

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

complete -C '/usr/local/bin/aws_completer' aws

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

export PATH=/usr/local/bin/aws_completer/:$PATH

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:ls:*' file-patterns '*(/):directories' # ls ignores non-dirs
zstyle ':completion:*:*:vim:*:*files' ignored-patterns '*~*.*' # vim ignores c/cpp object files
zstyle ':completion:*:*:cat:*:*files' ignored-patterns '*~*.*' # cat ignores c/cpp object files
#zstyle ':completion:*:*:vim:*' file-patterns '^*.(aux|log|pdf):source-files' '*:all-files' # vim ignores filetypes


source ~/.zsh/vi-mode/vi-mode.plugin.zsh
#source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
#fpath=(path/to/zsh-completions/src $fpath)

alias ls='ls --color=auto'

# up arrow ignores repeats
setopt HIST_IGNORE_DUPS

# alias
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias srcz="source ~/.zshrc"
alias greyniraws="ssh -i ~/.ssh/siminn-tv-voice.pem ubuntu@54.74.55.89"
alias gaur="adb reverse tcp:8081 tcp:8081"
alias py="python3"
alias c="pbcopy"
# ls alias
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
# git alias
alias gs="git status"
alias ga="git add ."
alias gcm="git commit -m"
alias gpush="git push"
alias gpull="git pull"
alias gb="git branch"
alias gch="git checkout"
alias tvx="cd ~/GitHub/tvx"

alias vim="nvim"

# menu select, shift+tab
bindkey -M menuselect '^[[Z' reverse-menu-complete

function run { g++ -o $1 $1.cpp }
function rn { npx react-native init $1 --template react-native-template-typescript }
function rename { echo -ne "\e]1;$1\a" }
function logcat { adb logcat '*:S' ReactNative:V ReactNativeJS:V -e "$1" }


#[ -f "/Users/teiturg/.ghcup/env" ] && source "/Users/teiturg/.ghcup/env" # ghcup-env
[ -f "/Users/teiturg/.ghcup/env" ] && source "/Users/teiturg/.ghcup/env" # ghcup-env
# adb logcat '*:S' ReactNative:V ReactNativeJS:V -e "insert_search_herna"

