export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[red]%}@%{$fg[blue]%}%M %{$fg[cyan]%}%1~%{$fg[red]%}]%{$reset_color%}$%b "

zmodload zsh/complist
#autoload -Uz compinit && compinit

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

#complete -C '/usr/local/bin/aws_completer' aws

# vi mode
bindkey -v

# Yank to the system clipboard
function vi-yank-xclip {
    zle vi-yank
   echo "$CUTBUFFER" | pbcopy -i
}
zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

# Paste from the system clipboard, install xsel
# vi-append-x-selection () { RBUFFER=$(xsel -o -p </dev/null)$RBUFFER; }
# zle -N vi-append-x-selection
# bindkey -a '^X' vi-append-x-selection
# vi-yank-x-selection () { print -rn -- $CUTBUFFER | xsel -i -p; }
# zle -N vi-yank-x-selection
# bindkey -a '^Y' vi-yank-x-selection

# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

export PATH=/usr/local/bin/aws_completer/:$PATH

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:ls:*' file-patterns '*(/):directories' # ls ignores non-dirs
zstyle ':completion:*:*:vim:*:*files' ignored-patterns '*~*.*' # vim ignores c/cpp object files
zstyle ':completion:*:*:cat:*:*files' ignored-patterns '*~*.*' # cat ignores c/cpp object files
#zstyle ':completion:*:*:vim:*' file-patterns '^*.(aux|log|pdf):source-files' '*:all-files' # vim ignores filetypes


source ~/.zsh/vi-mode/vi-mode.plugin.zsh
source ~/.zsh/fzf-tab-completion/zsh/fzf-zsh-completion.sh
#source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
#fpath=(path/to/zsh-completions/src $fpath)

alias ls='ls --color=auto'

# up arrow ignores repeats
setopt HIST_IGNORE_DUPS

# alias
alias zshrc="vim ~/.zshrc"
alias codez="code ~/.zshrc"
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
# cd alias
alias ..="cd .."
alias ../..="cd ../.."
alias ../../..="cd ../../.."
alias ../../../..="cd ../../../.."

alias vim="nvim"

# menu select, shift+tab
bindkey -M menuselect '^[[Z' reverse-menu-complete

function run { g++ -o $1 $1.cpp }
function rn { npx react-native init $1 --template react-native-template-typescript }
function rename { echo -ne "\e]1;$1\a" }
function logcat { adb logcat '*:S' ReactNative:V ReactNativeJS:V -e "$1" }
function nesc { ca65 $1.asm -o $1.o -t nes }
function nesl { ld65 $1.o -o $1.nes -t nes }


#[ -f "/Users/teiturg/.ghcup/env" ] && source "/Users/teiturg/.ghcup/env" # ghcup-env
[ -f "/Users/teiturg/.ghcup/env" ] && source "/Users/teiturg/.ghcup/env" # ghcup-env
# adb logcat '*:S' ReactNative:V ReactNativeJS:V -e "insert_search_herna"

# nvm cringe
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion