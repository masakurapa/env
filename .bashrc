# load homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# load bash_completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

##############################
# env
##############################
# 同じコマンドをhistoryに残さない
export HISTCONTROL=ignoredups
# historyにコマンドを実行した時間を表示
HISTTIMEFORMAT='%Y-%m-%dT%T%z '
# historyの件数
HISTFILESIZE=1000
# historyに保存しないコマンド
HISTIGNORE='history:pwd:ls:ls *:ll:b:d:f:s'

# golang
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# GCP
# export GOOGLE_APPLICATION_CREDENTIALS=/Users/sakuraba/vscode/gcv/88543-f1ec229afd77.json

# anyenv
#export PATH="$HOME/.anyenv/bin:$PATH"
#eval "$(anyenv init -)"

# git completion settings
source /opt/homebrew/Cellar/git/2.35.1/etc/bash_completion.d/git-prompt.sh
source /opt/homebrew/Cellar/git/2.35.1/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true

# terminal
export PS1='\[\033[37m\][\[\033[36m\]\u\[\033[37m\] \[\033[32m\]\W\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
export LSCOLORS=gxfxcxdxbxegedabagacad
export BASH_SILENCE_DEPRECATION_WARNING=1

# php7.4
export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/php@7.4/lib"
export CPPFLAGS="-I/opt/homebrew/opt/php@7.4/include"

# php8.0
# export PATH="/opt/homebrew/opt/php@8.0/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.0/sbin:$PATH"
# export LDFLAGS="-L/opt/homebrew/opt/php@8.0/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/php@8.0/include"

##############################
# alias
###############################
alias ls="ls -G"
alias ll="ls -lah"
alias dkc="docker compose"
alias tmux="tmux -u"

alias b="git branch"
alias d="git diff"
alias f="git fetch -p"
alias s="git status"
