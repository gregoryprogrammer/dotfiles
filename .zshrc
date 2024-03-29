export TERM="xterm-256color"
export BROWSER="google-chrome-stable"
export EDITOR="nvim"
export LESS='-R '
export MAKEFLAGS="-j21"
export TERM_ITALICS=

# Opt-out of .NET telemetry
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export PATH=$PATH:$HOME/.dotnet/tools

export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$HOME/Storage/Tools/bin
export PATH=$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin

# systemctl --user enable --now emacs
export PATH=$PATH:$HOME/.emacs.d/bin

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

setopt RM_STAR_WAIT
setopt interactivecomments
setopt combining_chars
setopt CORRECT

alias ls="ls -F --color=auto"
alias vcat=vimcat
alias ssh='TERM=xterm /usr/bin/ssh'
alias p=python3
alias v=nvim
alias vim=nvim

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

function virtual_env_prompt () {
    REPLY=${VIRTUAL_ENV+(${VIRTUAL_ENV:t}) }
}
grml_theme_add_token  virtual-env -f virtual_env_prompt '%F{yellow}' '%f'
zstyle ':prompt:grml:left:setup' items rc virtual-env change-root user at host path vcs percent

# git init --bare $HOME/.dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
# dotfiles config --local status.showUntrackedFiles no

[ -e ~/.dircolors ] && eval $(dircolors -b ~/.dircolors) ||
    eval $(dircolors -b)

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_RROT/bin:$PATH"
eval "$(pyenv init -)"

# fzf + fd
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
