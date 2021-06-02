# My Dotfiles

## Install packages
`sudo apt install git zsh tmux neovim`

## Install oh my zhs
`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

## Install base16 theme for terminal
`git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell`

### Activate base16 theme
`base16_tomorrow-night`

## Install vim-plug
`sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

### On nvim run
`:PlugInstall`

## Clone dotfiles
`mv ~/.zshrc ~/.zshrc.old && git clone git@github.com:rbilych/dotfiles.git && cd dotfiles && ./start`

## Install pyenv
`sudo apt install make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev`

`curl https://pyenv.run | bash`

`pyenv install --list` find proper version
`pyenv intall [version]`
`pyenv global system`
