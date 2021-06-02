# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export EDITOR='nvim'
ZSH_THEME="avit"

# Aliases
alias vimrc='nvim ~/.config/nvim/init.vim'
alias v='nvim'
alias vi='nvim'
alias ln='ln -s'
alias c=' clear'
alias tm='tmux'
alias tmuxrc='nvim ~/.tmux.conf'
alias :q=' exit'
alias vact='source .venv/bin/activate'

# Shortcats
alias shortcuts='nvim ~/.oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh'
alias gitshortcuts='nvim ~/.oh-my-zsh/plugins/git/git.plugin.zsh'

# Plugins
#zsh-syntax-highlighting - https://github.com/zsh-users/zsh-syntax-highlighting
plugins=(git common-aliases extract colored-man-pages zsh-syntax-highlighting)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
if [ -n "$VIRTUAL_ENV" ]; then
    . "$VIRTUAL_ENV/bin/activate"
fi

# terminal support 256 color schemes
export TERM="xterm-256color"

# BASE16 https://github.com/chriskempson/base16-shell
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)" ]
