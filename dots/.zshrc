
## Paths ##
export RUST_HOME=/Users/teaglebuilt/.rustup
export CARGO_HOME=/Users/teaglebuilt/.cargo/bin
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$PATH:$HOME/.poetry/bin"
export PATH=$PATH:$CARGO_HOME
export PYENV_VERSION=3.9.5

## Functions ##

# Open VSCode from terminal
function code {
	if [[ $# = 0 ]]; then
		open -a "Visual Studio Code"
	else
		local argPath="$1"
		[[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
		open -a "Visual Studio Code" "$argPath"
	fi
}

source $HOME/.aliases

## Evaluate ##
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

eval "$(starship init zsh)"