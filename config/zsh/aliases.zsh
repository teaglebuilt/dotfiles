<<<<<<< HEAD:config/zsh/aliases.zsh
alias run="./run.sh"
=======
alias run=./run.sh
>>>>>>> 1329dea5ce54d41f6eb835139e7faafd5d934a03:config/zsh/.aliases
alias load="source ~/.zshrc"
alias k="kubectl"
alias d="docker"
alias tmux='tmux -f $HOME/.config/tmux.conf'
alias envsource="source env/bin/activate"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gcm="git commit --allow=empty"
alias gpm="git push origin master"
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias git_prune="git fetch --prune && git branch -vv | grep 'origin/.*: gone]' | awk '{print \$1}' | xargs git branch -d"
alias nuke="rm -rf"