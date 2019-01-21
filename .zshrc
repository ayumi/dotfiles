# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cute"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(wd zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
unsetopt AUTO_CD

# User configuration

#bindkey -v
#set editing-mode vi
#set blink-matching-paren on
#bindkey -M viins 'ii' vi-cmd-mode
#bindkey -M vicmd '?' history-incremental-search-backward
#bindkey -M vicmd '/' history-incremental-search-forward

#export PATH="/Users/ayu/.rvm/gems/ruby-2.1.2/bin:/Users/ayu/.rvm/gems/ruby-2.1.2@global/bin:/Users/ayu/.rvm/rubies/ruby-2.1.2/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/ayu/.rvm/bin"
# export PATH=/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export VISUAL=nvim
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Enable vim mode
#bindkey -v
#bindkey -M viins 'jj' vi-cmd-mode
#bindkey -M vicmd '/' history-incremental-search-backward
#bindkey -M vicmd '?' history-incremental-search-forward

# vim mode status indicators
#RPS1="--INSERT--"
function zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/}/(main|viins)/-- INSERT --}"
    zle reset-prompt
}
#zle -N zle-keymap-select

# Colorize man pages
man() {
	env \
		LESS_TERMCAP_md=$'\e[1;33m' \
		LESS_TERMCAP_me=$'\e[0m' \
		LESS_TERMCAP_se=$'\e[0m' \
		LESS_TERMCAP_so=$'\e[1;40;96m' \
		LESS_TERMCAP_ue=$'\e[0m' \
		LESS_TERMCAP_us=$'\e[1;35m' \
			man "$@"
}

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# apple + java poopy
#export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
source $HOME/.sh_aliases
#source $HOME/.sh_aliases_private
#source $HOME/.sh_fn

# cert.pem file for openssl
# export SSL_CERT_FILE=/usr/local/etc/openssl/certs/cert.pem

# Language specific things

export GOPATH="$HOME/go"
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"

export PYTHON_CONFIGURE_OPTS=--enable-unicode=ucs2
pyenv() {
  if [ -d "$HOME/.pyenv" ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin/:$PATH"
    if which pyenv > /dev/null; then
      eval "$(command pyenv init -)"
      pyenv "$@"
    fi
  fi
}

rbenv() {
  if [ -d "$HOME/.rbenv" ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(command rbenv init -)"
    rbenv "$@"
  fi
}

nvm() {
  if [ -d "$HOME/.nvm" ]; then
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
    #[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  fi
}

export PATH="$PATH:$HOME/apps/bin"
