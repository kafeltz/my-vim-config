# ~/.vimrc já deve estar configurado com os comando de inicialização

# instalação do pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# instalação do vim-json (manualmente)
cd ~/.vim/bundle
git clone git@github.com:elzr/vim-json.git

# https://github.com/mxw/vim-jsx
cd ~/.vim/bundle
git clone https://github.com/mxw/vim-jsx.git

# https://github.com/scrooloose/nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# https://github.com/tpope/vim-surround
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-surround.git

# https://github.com/tpope/vim-unimpaired
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-unimpaired.git

# https://github.com/godlygeek/tabular
cd ~/.vim/bundle
git clone git://github.com/godlygeek/tabular.git

# https://github.com/mattn/emmet-vim
cd ~/.vim/bundle
git clone https://github.com/mattn/emmet-vim.git

# http://kien.github.io/ctrlp.vim/#installation
cd ~/.vim
git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim

# https://github.com/nelstrom/vim-mac-classic-theme
cd ~/.vim/bundle
git clone git@github.com:nelstrom/vim-mac-classic-theme.git

# https://github.com/vim-syntastic/syntastic
cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

# https://github.com/tpope/vim-jdaddy
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-jdaddy.git
