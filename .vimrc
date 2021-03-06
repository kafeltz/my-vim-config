execute pathogen#infect()

filetype plugin on
filetype indent on
syntax on

" set background and colorscheme must come after `syntax on`
if has('gui_macvim')
    colorscheme default
    set background=light
    set guifont=Menlo\ Regular\ for\ Powerline:h12
    highlight NonText guifg=#BBBBBB guibg=NONE
    highlight CursorLineNr ctermfg=red
    highlight CursorLine term=underline cterm=underline guibg=gray
    highlight Folded guifg=#666666 guibg=#EEEEEE
    highlight SpecialKey guifg=#DDDDDD guibg=NONE
else
    if has("unix")
        let s:uname = system("uname -s")

        if s:uname == "Darwin\n"
            " colorscheme before set background
            let g:monokai_term_italic = 1
            let g:monokai_gui_italic = 1
            colorscheme solarized
            set background=light

            highlight NonText ctermfg=LightGray
            highlight CursorLineNr ctermfg=red
            highlight CursorLine term=underline cterm=underline guibg=LightGray
            highlight Folded ctermbg=LightGray ctermfg=black cterm=NONE
            highlight Search ctermbg=Gray

            " com colorscheme default é lightgray, com solarized é 253
            " highlight SpecialKey ctermbg=none ctermfg=LightGray
            highlight SpecialKey ctermbg=none ctermfg=254
        else
            " colorscheme before set background
            set t_Co=256 " This is may or may not needed.
            set rtp+=~/projects/fzf/

            " LINUX NOTEBOOOK PAPERCOLOR DARK
            " colorscheme PaperColor
            " set background=dark
            " highlight NonText ctermbg=NONE ctermfg=235
            " highlight SpecialKey ctermfg=235 ctermbg=NONE

            colorscheme PaperColor
            set background=light
            highlight NonText ctermbg=NONE ctermfg=252
            highlight SpecialKey ctermfg=252 ctermbg=NONE


            " LINUX NOTEBOOK SOLARIZED-DARK
            " highlight Folded cterm=NONE ctermbg=7 ctermfg=12
            " highlight SpecialKey ctermfg=253 ctermbg=NONE
            " highlight NonText ctermbg=NONE ctermfg=253
        endif
    endif
endif


" let mapleader=","
let mapleader = "\<Space>"


" set mouse=a
set scrolljump=1
set foldlevelstart=-1
set path=$PWD/**
set backspace=indent,eol,start " http://vim.wikia.com/wiki/Backspace_and_delete_problems
set hidden
set nowrap
set nocompatible
set wildignorecase
set wildmenu
set wildmode=longest:list,full
set showcmd
set ruler
set cmdheight=2
set ignorecase
set hlsearch
set showmatch
set encoding=utf8
set laststatus=2
set tabstop=4
set softtabstop=0
set expandtab " insert spaces when pressing <tab>
set shiftwidth=4
set smarttab
set number
set smartindent
set autoindent
set relativenumber&
set foldmethod=indent
set colorcolumn=120
set cursorline&
set cursorcolumn&
set list
set listchars+=tab:»·
set listchars+=trail:·
set listchars+=eol:¬
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:×
set listchars+=space:·

" tabs
" http://vim.wikia.com/wiki/Using_tab_pages
" set switchbuf=usetab,newtab
" set wildcharm=<C-z>

" nnoremap ; :
" vnoremap ; :
" nnoremap <silent><esc><esc> :noh<cr>

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


set wildignore+=*/node_modules/*,*.so,*.swp,*.zip
set wildignore+=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*

"sintaxe para .erb e .html.erb
"set ft? => filetype=mason

set matchpairs+=<:>

" let g:netrw_browse_split=3
let g:netrw_liststyle=3
let g:netrw_winsize=50
let g:NetrwTopLvlMenu='Ismael'
let g:jsx_pragma_required = 1

" vim-json
let g:vim_json_syntax_conceal = 0

" buffers
" http://stackoverflow.com/questions/16082991/vim-switching-between-files-rapidly-using-vanilla-vim-no-plugins
nnoremap <leader>e :Errors<cr>
nnoremap <leader>j :jumps<cr>
nnoremap <leader>l :ls<cr>:b<Space>
nnoremap <leader>m :marks<cr>
nnoremap <leader>p :set paste!<cr>
nnoremap <leader>r :registers<cr>
nnoremap <leader>u :CtrlPMRUFiles<cr>
nnoremap <leader>x :SyntasticReset<cr>
nnoremap <leader>z :SyntasticCheck<cr>

nnoremap <C-Tab> :bnext<CR>
nnoremap <S-C-Tab> :bprevious<CR>

" http://vimcasts.org/episodes/using-vims-paste-mode-with-the-system-paste-command/
" So remember: with the paste option enabled, you’re safe to use the system paste command, but any user-defined Insert mode mappings will fail. For that reason, it’s a good idea to turn off the paste option as soon as you’re finished using it.
" set paste

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
" autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" autocmd InsertLeave * match ExtraWhitespace /\s\+$/
" autocmd BufWinLeave * call clearmatches()
" autocmd InsertLeave * redraw!

" autocmd FileWritePre * call TrimWhiteSpace()
" autocmd FileAppendPre * call TrimWhiteSpace()
" autocmd FilterWritePre * call TrimWhiteSpace()
" autocmd BufWritePre * call TrimWhiteSpace()e()

" map <leader>tn :tabnew<cr>
" map <leader>tc :tabclose<cr>
map <leader><F1> :set path=$PWD/**<cr>
" map <leader><F2> :mksession! <cr>
nnoremap <F3> :NERDTreeFind<cr>
nnoremap <F4> :set number<cr>:set relativenumber!<cr>
nnoremap <F5> :set list!<cr>
nnoremap <F6> :call TrimWhiteSpace()<cr>
nnoremap <F7> :let @/ = ""<cr>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F9> :Switch<CR>
map <F10> :normal vi{<cr> :'<,'>sort<cr>
nnoremap <F11> :so $MYVIMRC<cr>
nnoremap <F12> :redraw!<cr>
nnoremap <silent><A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<cr>
nnoremap <silent><A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<cr>
nnoremap <leader>h :set cursorline! cursorcolumn!<cr>
nnoremap <leader>s :call ToggleMouse()<cr>


" syntaxes "

" *.ejs syntax
au BufNewFile,BufRead *.ejs set filetype=html
autocmd BufNewFile,BufRead bower-* set filetype=plain
autocmd BufNewFile,BufRead bower_* set filetype=plain
autocmd BufNewFile,BufRead *.min.js set filetype=plain

nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a: :Tabularize /:\zs<CR>

" Source the vimrc file after saving it
if has("autocmd")
    " autocmd bufwritepost .vimrc source $MYVIMRC
endif

" NERDTREE
nnoremap <leader>n :NERDTreeToggle<cr>
let NERDTreeIgnore=['.pyc$']


" functions
function! ToggleMouse()
    if &mouse == ''
        set mouse=a
    else
        set mouse=
    endif
endfunc

function! TrimWhiteSpace()
    %s/\s*$//
    ''
endfunction

function! ShowColorPallete()
    let num = 255
    while num >= 0
        exec 'hi col_'.num.' ctermbg='.num.' ctermfg=white'
        exec 'syn match col_'.num.' "ctermbg='.num.':...." containedIn=ALL'
        call append(0, 'ctermbg='.num.':....')
        let num = num - 1
    endwhile
endfunction

function! Switch()
    let g:currentColorScheme = ''
    let g:listOfColorScheme = ['default', 'solarized', 'mac_classic']
    let g:indexOfColorScheme = get(g:, 'indexOfColorScheme', 0)

    let g:currentColorScheme = get(g:listOfColorScheme, g:indexOfColorScheme )

    if g:currentColorScheme == 'default'
        set background=light
        colorscheme default
    elseif g:currentColorScheme == 'solarized'
        set background=dark
        colorscheme solarized
    elseif g:currentColorScheme == 'mac_classic'
        set background=light
        colorscheme mac_classic
    endif

    let g:indexOfColorScheme = g:indexOfColorScheme + 1

    if g:indexOfColorScheme == len(g:listOfColorScheme) + 1
        let g:indexOfColorScheme = 1
    endif
endfunction

" netrw
let g:netrw_browse_split=2
let g:netrw_winsize=30

" emmet-vim
let g:user_emmet_install_global = 0
autocmd FileType html,css,htmldjango EmmetInstall

" syntastic
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
let g:syntastic_mode_map = {
    \ 'mode': 'passive',
    \ 'active_filetypes': ['javascript'],
    \ 'passive_filetypes': ['less', 'python']
    \ }

" ctrlp
" 'i' all files as hidden buffers
let g:ctrlp_open_multiple_files = 'i'

