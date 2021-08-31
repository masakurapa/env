# load homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# load bash_completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

##############################
# env
##############################
# 同じコマンドをhistoryに残さない
export HISTCONTROL=ignoreboth
# historyにコマンドを実行した時間を表示
HISTTIMEFORMAT='%Y-%m-%dT%T%z '
# historyの件数
HISTFILESIZE=1000
# historyに保存しないコマンド
HISTIGNORE='history:pwd:ls:ls *:ll'

# golang
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# GCP
# export GOOGLE_APPLICATION_CREDENTIALS=/Users/sakuraba/vscode/gcv/88543-f1ec229afd77.json

# anyenv
#export PATH="$HOME/.anyenv/bin:$PATH"
#eval "$(anyenv init -)"

# git completion settings
source /opt/homebrew/Cellar/git/2.33.0/etc/bash_completion.d/git-prompt.sh
source /opt/homebrew/Cellar/git/2.33.0/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[37m\][\[\033[36m\]\u\[\033[37m\] \[\033[32m\]\W\[\033[37m\]]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

##############################
# alias
###############################
alias ls="ls -G"
alias ll="ls -lah"
alias dkc="docker-compose"
