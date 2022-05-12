
## Paths ##
export NVM_DIR=~/.nvm
export RUST_HOME=/Users/teaglebuilt/.rustup
export CARGO_HOME=/Users/teaglebuilt/.cargo/bin
export PYENV_ROOT="$HOME/.pyenv"
export ANT_HOME=/usr/local/apache-ant-1.9.3
export M2_HOME=/usr/local/apache-maven/apache-maven-3.2.3
export M2=/usr/local/apache-maven/apache-maven-3.2.3/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export JRE_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_80.jdk/Contents/Home
export JAVA_OPTS="$JAVA_OPTS -XX:NewSize=700m -XX:MaxNewSize=700m -Xms2048m -Xmx2048m -XX:MaxPermSize=512m -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:SurvivorRatio=20 -XX:ParallelGCThreads=8"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:$HOME/.poetry/bin"
export PATH=$PATH:$CARGO_HOME
export PATH=$JAVA_HOME/bin:$ANT_HOME/bin:$M2:$PATH
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export PYENV_VERSION=3.9.5

## Functions ##

source $HOME/.aliases.zsh

## Evaluate ##
source $(brew --prefix nvm)/nvm.sh
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(direnv hook zsh)"

eval "$(starship init zsh)"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"
