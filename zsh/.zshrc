export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go-workspace
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


export ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"
export STARSHIP_CONFIG=starship
export HOMEBREW_PREFIX=/usr/local
# export STARSHIP_CONFIG=~/.config/starship.toml

plugins=(
    aws
    brew
    git
    osx
    rbenv
    helm
    python
)


function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"
eval "$(starship init zsh)"

# source $(dirname $(gem which colorls))/tab_complete.sh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


alias python="python3"
alias gs="git status"
alias gpm="git push origin master"
alias ls="colorls"
alias nuke="rm -rf"
alias envsource="source env/bin/activate"
alias load="source ~/.zshrc"


for function in ~/functions/*/*; do
  source $function
done