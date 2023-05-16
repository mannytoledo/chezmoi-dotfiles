zmodload zsh/zprof
export SHELL_HELPERS="$HOME/.zsh/helpers"
export ZSH_CONFIG_ROOT="$HOME/.zsh"
export GIT_CU_DIR=~/code

fpath=("$ZSH_CONFIG_ROOT/functions" $fpath)

# export DOCKER_HOST=ssh://localhost:60022

# Test the speed of startup with this command
# /usr/bin/time /bin/zsh -i -c exit

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(aws be-ethos brew docker docker-compose docker-machine fasd git mtldo osx pip python ssh-agent tmux virtualenv virtualenvwrapper z)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# source $ZSH/oh-my-zsh.sh
# source $ZSH_CONFIG_ROOT/helpers/source_dockermachine
source $ZSH_CONFIG_ROOT/helpers/credentials

# Source functions
for file in $ZSH_CONFIG_ROOT/functions/*; do
    source "$file"
done

# autoload -U promptinit; promptinit
# prompt pure

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='lvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# tmuxifier
# export PATH="$HOME/.tmuxifier/bin:$PATH"
# eval "$(tmuxifier init -)"
# pyenv virtualenvwrapper_lazy
#
# eval "$(direnv hook zsh)"

# Configure Go paths
export "GOPATH=${HOME}/go"
export "GOROOT=/usr/local/opt/go/libexec"

# Support GOPATH in path
export "PATH=/usr/local/sbin:${PATH}:${GOPATH}/bin:${GOROOT}/bin"

# Add binaries from .local into path
export "PATH=/Users/mtoledo/.local/bin:${PATH}"

# KREW binary path
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"


# Make brew python the default shell python
# export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# GOVERSION=$(brew list go | head -n 1 | cut -d '/' -f 6)

# Load aliases from the helpers directory
source $SHELL_HELPERS/aliases.zsh
source $SHELL_HELPERS/private_aliases.zsh

# Example aliases
# See $ZSH/custom for aliases

#Klam-ext settings
export KLAM_EXT_NO_SSH_OUT="true"
export KLAM_BROWSER="Brave Browser"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
# [[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
#
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
# [[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#
# Spaceship Prompt Config
#
# SPACESHIP_CHAR_SYMBOL='❯ '
# SPACESHIP_CHAR_SYMBOL='➜  '
# SPACESHIP_KUBECONTEXT_SHOW=true
# SPACESHIP_PYENV_SHOW=false
# SPACESHIP_GOLANG_SHOW=false
# SPACESHIP_PROMPT_ORDER=(
  # time          # Time stamps section
  # user          # Username section
  # dir           # Current directory section
  # host          # Hostname section
  # git           # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  # package       # Package version
  # node          # Node.js section
  # ruby          # Ruby section
  # elixir        # Elixir section
  # xcode         # Xcode section
  # swift         # Swift section
  # golang        # Go section
  # php           # PHP section
  # rust          # Rust section
  # haskell       # Haskell Stack section
  # julia         # Julia section
  # docker        # Docker section
  # aws           # Amazon Web Services section
  # venv          # virtualenv section
  # conda         # conda virtualenv section
  # pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember         # Ember.js section
  # kubecontext   # Kubectl context section
  # terraform     # Terraform workspace section
  # exec_time     # Execution time
  # line_sep      # Line break
  # battery       # Battery level and status
  # vi_mode       # Vi-mode indicator
  # jobs          # Background jobs indicator
  # exit_code     # Exit code section
  # char          # Prompt character
# )

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
# [[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh



autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault

eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="/Users/manueltoledo/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
