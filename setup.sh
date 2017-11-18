#!/bin/bash




# GoLang related 
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
git clone https://github.com/tomtom/tlib_vim.git ~/.vim/bundle/tlib_vim
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git ~/.vim/bundle/vim-addon-mw-utils
git clone https://github.com/garyburd/go-explorer.git ~/.vim/bundle/go-explorer
git clone https://github.com/dgryski/vim-godef.git ~/.vim/bundle/vim-godef
git clone https://github.com/zanglg/nova.vim.git ~/.vim/bundle/vim-nova

# C Sharp related

# Chef/Ruby related
git clone https://github.com/vadv/vim-chef.git  ~/.vim/bundle/vim-chef
git clone https://github.com/ngmy/vim-rubocop.git ~/.vim/bundle/vim-rubocop
git clone https://github.com/vim-ruby/vim-ruby.git ~/.vim/bundle/vim-ruby
# git clone https://github.com/erniebrodeur/ruby-beautify.git ~/.vim/bundle/ruby-beautify

# File exploration and tree and UI
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/jistr/vim-nerdtree-tabs.git ~/.vim/bundle/vim-nerdtree-tabs

# html
git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim.git

# Other 
git clone https://github.com/w0rp/ale.git ~/.vim/bundle/ale

# git clone https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/xolox/vim-misc.git ~/.vim/bundle/vim-misc
git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
git clone https://github.com/scrooloose/nerdcommenter ~/.vim/bundle/nerdcommenter
git clone https://github.com/JamshedVesuna/vim-markdown-preview.git ~/.vim/bundle/vim-markdown-preview
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp

# choose a line!
#git clone https://github.com/itchyny/lightline.vim.git ~/.vim/bundle/lightline
git clone https://github.com/vim-airline/vim-airline.git ~/.vim/bundle/airline



# tagging and code parsing
git clone https://github.com/craigemery/vim-autotag.git ~/.vim/bundle/vim-autotag
git clone https://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
git clone https://github.com/xolox/vim-easytags.git ~/.vim/bundle/vim-easytags


# git related
git clone https://github.com/airblade/vim-gitgutter.git ~/.vim/bundle/vim-gitgutter
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive


# install some slick color schemes and theme management stuff
git clone https://github.com/nightsense/seabird.git ~/.vim/bundle/seabird
git clone https://github.com/raphamorim/lucario.git ~/.vim/bundle/lucario
git clone https://github.com/tyrannicaltoucan/vim-deep-space.git ~/.vim/bundle/deep-space
git clone https://github.com/vim-airline/vim-airline-themes.git ~/.vim/bundle/vim-airline-themes
git clone https://github.com/NLKNguyen/papercolor-theme.git ~/.vim/bundle/papercolor-theme
git clone https://github.com/ayu-theme/ayu-vim.git ~/.vim/bundle/ayu-vim
git clone https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/vim-colorschemes
git submodule add https://github.com/flazz/vim-colorschemes.git ~/.vim/bundle/vim-colorschemes
git clone https://github.com/rhysd/vim-color-spring-night.git ~/.vim/bundle/vim-color-spring-night
git clone https://github.com/carakan/new-railscasts-theme.git ~/.vim/bundle/new-railscasts-theme
git clone https://github.com/danilo-augusto/vim-afterglow.git ~/.vim/bundle/vim-afterglow
git clone https://github.com/hhsnopek/vim-firewatch.git ~/.vim/bundle/vim-firwatch
git clone https://github.com/ryanoasis/vim-devicons.git ~/.vim/bundle/vim-devicons
git clone https://github.com/broduo/broduo-color-scheme.git ~/.vim/bundle/broduo-color-scheme
git clone https://github.com/tyrannicaltoucan/vim-quantum.git ~/.vim/bundle/vim-quantum
git clone https://github.com/AlexMax/.vim.git ~/.vim/bundle/alexmaxvim
git clone https://github.com/rakr/vim-two-firewatch.git ~/.vim/bundle/vim-two-firewatch
git clone https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi
git clone https://github.com/jodosha/vim-godebug.git ~/.vim/bundle/vim-godebug
git clone https://github.com/nightsense/vimspectr.git ~/.vim/bundle/vimspectr


# autocomplete
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer --go-completer --js-completer --cs-completer
cd ~
git clone https://github.com/ervandew/supertab ~/.vim/bundle/supertab
git clone https://github.com/garbas/vim-snipmate.git ~/.vim/bundle/vim-snipmate
git clone https://github.com/honza/vim-snippets.git ~/.vim/bundle/vim-snippets
git clone https://github.com/Chiel92/vim-autoformat.git ~/.vim/bundle/vim-autoformat
git clone https://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
git clone https://github.com/OmniSharp/omnisharp-vim.git ~/.vim/bundle/omnisharp-vim
git clone https://github.com/SirVer/ultisnips.git ~/.vim/bundle/ultisnips
git clone https://github.com/sheerun/vim-polyglot.git ~/.vim/bundle/vim-polyglot
git clone https://github.com/moll/vim-node.git ~/.vim/bundle/vim-node
git clone https://github.com/posva/vim-vue.git ~/.vim/bundle/vim-vuew

# This is broken for me as of 3/28/17
#git clone https://github.com/Townk/vim-autoclose.git ~/.vim/bundle/vim-autoclose

echo "DON'T FORGET TO INSTALL THE NEOVIM PLUGIN WITH PIP"
echo "RUN: pip install neovim"

echo "ALSO, if you have installed neovim, then run these commands:"
echo "mkdir ~/.config/nvim"
echo "ln ~/.vim/bundle ~/.config/nvim/bundle"
echo "ln ~/.vim/autoload ~/.config/nvim/autoload"
echo "ln ~/.vimrc ~/.config/nvim/init.vim"

sudo gem install rubocop foodcritic
sudo npm install -g prettier jshint eslint eslint-plugin-vue htmlhint write-good tidy
sudo pip install autopep8 pylint ansible-lint
