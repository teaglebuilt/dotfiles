

export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go-workspace
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


export ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"
export STARSHIP_CONFIG=starship

# source antigen.zsh
# antigen bundle zsh-users/zsh-syntax-highlighting
# antigen apply


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

source $(dirname $(gem which colorls))/tab_complete.sh

alias python="python3"
