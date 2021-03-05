export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/local/Cellar/go/1.15.5/bin
export GOPATH=$HOME/workspace
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
export PATH=$PATH:/usr/local/Cellar/gradle/6.7.1/bin:$PATH:$PATH:$JAVA_HOME/bin


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

# Load aliases if they exist.
[ -f "${HOME}/.aliases" ] && source "${HOME}/.aliases"

export SPACESHIP_CHAR_SYMBOL="\uf0e7"
export SPACESHIP_CHAR_SUFFIX=" "
export SPACESHIP_PYENV_SYMBOL=" "
export SPACESHIP_VENV_SYMBOL=" "
export SPACESHIP_PYENV_COLOR="blue"
export SPACESHIP_VENV_COLOR="yellow"
export SPACESHIP_DOCKER_SYMBOL="  "
export SPACESHIP_GOLANG_PREFIX=" "
export SPACESHIP_GOLANG_SYMBOL="\ue724 "
export SPACESHIP_NODE_SYMBOL="\uf898 "
export SPACESHIP_RUBY_SYMBOL="\ue791 "
export SPACESHIP_AWS_SYMBOL="\ue7ad "
export SPACESHIP_KUBECTL_SYMBOL="\ue7b7 "


for function in ~/functions/*/*; do
  source $function
done
