# My Dotfiles

## Installation

Install ruby on rails

[https://gorails.com/setup/](https://gorails.com/setup/)

Install neovim zsh tmux pip3

`sudo add-apt-repository ppa:neovim-ppa/unstable`
`sudo apt update && sudo apt install neovim zsh tmux python3-pip`
`pip3 install --upgrade neovim`
`rvm @global do gem install neovim rubocop`

Install oh my zhs

`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

Install base16 theme for terminal

`git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell`

Install vim-plug

`curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

Clone dotfiles

`mv ~/.zshrc ~/.zshrc.old && git clone git@github.com:rbilych/dotfiles.git && cd dotfiles && ./start`

Activate base16 theme

`base16_tomorrow-night`

On nvim run `PlugInstall`
