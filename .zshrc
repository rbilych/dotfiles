# Path to your oh-my-zsh installation.
export ZSH=/home/ruslan/.oh-my-zsh
export EDITOR='vim'
ZSH_THEME="bira"

# Aliases
alias vimrc='vi ~/.vimrc'
alias v='vim'
alias vi='vim'
alias ln='ln -s'
alias server='python -m SimpleHTTPServer'
alias c='clear'

# Shortcats
alias shortcuts='vim ~/.oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh'
alias gitshortcuts='vim ~/.oh-my-zsh/plugins/git/git.plugin.zsh'
alias railsshortcuts='vim ~/.oh-my-zsh/plugins/rails/rails.plugin.zsh'

# Tmux
alias tmux='tmux -2'
alias tm='tmux'
alias tmuxrc='vim ~/.tmux.conf'

# Plugins
#zsh-syntax-highlighting - https://github.com/zsh-users/zsh-syntax-highlighting
plugins=(git common-aliases rails zsh-syntax-highlighting)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# terminal support 256 color schemes
export TERM="xterm-256color"

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
