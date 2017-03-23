# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export EDITOR='nvim'
ZSH_THEME="avit"

# Aliases
alias vimrc='nvim ~/.config/nvim/init.vim'
alias v='nvim'
alias vi='nvim'
alias ln='ln -s'
alias server='python -m SimpleHTTPServer'
alias c='clear'
alias py='python3.6'
alias tm='tmux'
alias tmuxrc='nvim ~/.tmux.conf'

# Shortcats
alias shortcuts='nvim ~/.oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh'
alias gitshortcuts='nvim ~/.oh-my-zsh/plugins/git/git.plugin.zsh'
alias railsshortcuts='nvim ~/.oh-my-zsh/plugins/rails/rails.plugin.zsh'

# Plugins
#zsh-syntax-highlighting - https://github.com/zsh-users/zsh-syntax-highlighting
plugins=(git rails common-aliases extract colored-man-pages zsh-syntax-highlighting)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$HOME/.config/composer/vendor/bin"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# terminal support 256 color schemes
export TERM="xterm-256color"

# BASE16 https://github.com/chriskempson/base16-shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)" ]
