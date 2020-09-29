export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go-workspace
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin


export ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"
export ZSH_CUSTOM=~/dotfiles/zsh/.oh-my-zsh
export HOMEBREW_PREFIX=/usr/local


ZSH_THEME="spaceship"


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


# source $(dirname $(gem which colorls))/tab_complete.sh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


alias python="python3"
alias gs="git status"
alias gpm="git push origin master"
alias ls="colorls"
alias nuke="rm -rf"
alias envsource="source env/bin/activate"
alias load="source ~/.zshrc"

export SPACESHIP_CHAR_SYMBOL="\uf0e7"
export SPACESHIP_CHAR_SUFFIX=" "
export SPACESHIP_PYENV_SYMBOL=" "
export SPACESHIP_VENV_SYMBOL=" "
export SPACESHIP_PYENV_COLOR="blue"
export SPACESHIP_VENV_COLOR="yellow"
export SPACESHIP_DOCKER_SYMBOL=" "
export SPACESHIP_GOLANG_PREFIX=" "
export SPACESHIP_GOLANG_SYMBOL="\ue724 "
export SPACESHIP_NODE_SYMBOL="\uf898 "
export SPACESHIP_RUBY_SYMBOL="\ue791 "
export SPACESHIP_AWS_SYMBOL="\ue7ad "
export SPACESHIP_KUBECTL_SYMBOL="\ue7b7 "


for function in ~/functions/*/*; do
  source $function
done
