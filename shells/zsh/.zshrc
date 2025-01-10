export PATH="/usr/bin:/bin:/usr/sbin:/sbin"

# Custom Paths
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/miniconda3/bin:$PATH"
export PATH="$HOME/.rvm/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/istio-1.21.2/bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# Environment Variables
export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="lvim"
export RUST_HOME="$HOME/.rustup"
export PYENV_ROOT="$HOME/.pyenv"
export CONDA_AUTO_ACTIVATE_BASE=false
export STARSHIP_CONFIG=$HOME/github/teaglebuilt/dotfiles/starship.toml
# Add pyenv to PATH
export PATH="$PYENV_ROOT/bin:$PATH"
export LANG=en_US.UTF-8
# Zsh Options
# setopt HIST_IGNORE_ALL_DUPS
# setopt HIST_SAVE_NO_DUPS
# setopt HIST_REDUCE_BLANKS
# setopt INC_APPEND_HISTORY_TIME
# setopt EXTENDED_HISTORY
# setopt SHARE_HISTORY

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOME/.aliases.zsh
source $HOME/.functions.zsh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='lvim'
fi

if [[ -f ".gitattributes" ]]; then
  echo "enabling 'DISABLE_UNTRACKED_FILES_DIRTY'"
  export DISABLE_UNTRACKED_FILES_DIRTY="true"
fi

export ARCHFLAGS="-arch x86_64"


# autoload -U add-zsh-hook
# load_asdf_if_tool_versions_present() {
#   if [[ -n "$(find_up '.nvmrc')" ]]; then
#     echo ".nvmrc detected. skip activating asdf"
#     load_nvmrc
#   else
#     if [[ -f "$(brew --prefix asdf)/asdf.sh" ]]; then
#       . "$(brew --prefix asdf)/libexec/asdf.sh"
#       source /usr/local/share/zsh/site-functions/_asdf
#     else
#       echo "skipping activating asdf"
#     fi
#   fi
# }
# add-zsh-hook chpwd load_asdf_if_tool_versions_present


# load_nvmrc() {
#   export NVM_DIR="$HOME/.nvm"
#     [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#     [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# }

_conda_init() {
    # Remove alias to prevent conflict with Conda's function definition
  # unalias conda 2>/dev/null

  # Source the Conda initialization script
  if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
      . "$HOME/miniconda3/etc/profile.d/conda.sh"
  elif [ -f "/opt/conda/etc/profile.d/conda.sh" ]; then
      . "/opt/conda/etc/profile.d/conda.sh"
  else
      echo "Conda script not found!"
      return 1
  fi
}

# _pyenv_init() {
#   if command -v pyenv >/dev/null 2>&1; then
#       export PYENV_ROOT="$HOME/.pyenv"
#       export PATH="$PYENV_ROOT/bin:$PATH"

#       eval "$(pyenv init --path)"
#       eval "$(pyenv init -)"

#       eval "$(pyenv virtualenv-init -)"
#   fi
# }

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# pnpm
export PNPM_HOME="/Users/teaglebuilt/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#
. /usr/local/opt/asdf/libexec/asdf.sh

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"
