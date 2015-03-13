set nocompatible " turn off Vi compatibility mode
filetype off " required by Vundle

" Vundle setup
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
Plugin 'gmarik/Vundle.vim'

" My bundles
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'nginx.vim'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/syntastic'
Plugin 'jnwhiteh/vim-golang'
Plugin 'morhetz/gruvbox'
Plugin 'tacahiroy/ctrlp-funky'

call vundle#end()
filetype plugin indent on

" ervandew/supertab
let g:SuperTabDefaultCompletionType = '<c-n>'

" scrooloose/nerdtree
let NERDTreeMinimalUI = 1 " disables the 'Press ? for help' text

" kien/ctrlp.vim
let g:ctrlp_map = '<leader><space>' " open using leader key + space bar
let g:ctrlp_working_path_mode = 0 " disable working directory detection

" bling/vim-airline
let g:airline_symbols = {}
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'P'
let g:airline_symbols.whitespace = 'Ξ'

" scrooloose/syntastic
let g:syntastic_error_symbol = 'xx'
let g:syntastic_warning_symbol = '!!'

" VIM setup
set encoding=utf-8
set nowrap " disable automatic word wrapping
set history=300 " number of commands saved in the history list
set undolevels=300 " number of undo levels
set backupdir=~/vimfiles/tmp " the directory where the swap/backup files should be stored
set directory=~/vimfiles/tmp
set dir=~/vimfiles/tmp
set modeline " respect modeline in files
set exrc " enable per-directory .vimrc files...
set secure " ...and disable unsafe commands in them
set backup " turn on backup
set noswapfile " turn off swap file
set backspace=eol,start,indent " allow backspacing over everything in insert mode
set hidden " allow Vim to manage multiple buffers effectively
set tabstop=2 " default tab size
set shiftwidth=2
set expandtab " convert tabs to spaces
set autoindent " self explanatory, huh?
set copyindent " copy the previous indentation on autoindenting
set list " show all characters
set listchars=tab:→→,trail:·,nbsp:_ " show tabs and trailing spaces
set t_Co=256 " the term has 256 colors
set hlsearch " highlight search
set incsearch " show matches while typing
set ignorecase " ignore case when searching
set smartcase " ignore case if search pattern is all lowercase
set completeopt=menuone,preview
" set ttyfast " improves redrawing
" set lazyredraw
" set cursorline " highlight current line
set showmatch " show matching parenthesis
set noesckeys " <esc> is recognized immediately
set novisualbell " disable visual bell
set noerrorbells " disable error bells
set autoread " automatically reload file on change
set scrolloff=5 " minimum number of screen lines above and below the cursor
set sidescrolloff=20 " minimum number of screen columns to keep to the left and to the right of the cursor
set number " show line numbers
set colorcolumn=80 " show a column on screen that is useful to align text
set textwidth=0 " disable auto line break
set foldmethod=indent " folding based on indentation
set foldlevel=20
set foldlevelstart=20
set clipboard=unnamed " use system clipboard

" Status and command line
set laststatus=2 " always show the status line
set noshowmode " do not show current mode on status line
set ruler " show the cursor position on status line
set showcmd " show commands on status line
set title " show the current filename on the window title
set wildmode=longest,list " a list of completions will be shown when press tab on the command line

if version >= 704
  set regexpengine=1 " new regexp engine makes Vim slow with ruby syntax highlighting
endif

syntax on " turn on syntax highlighting
set background=dark
colorscheme gruvbox " the color scheme (srsly)

" autocmds

" Automatically quit vim if NERDTree is last and only buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Syntax highlight
autocmd BufNewFile,BufRead Gemfile,Vagrantfile,Capfile,Guardfile,Rakefile,*.god,*unicorn.conf* set filetype=ruby
autocmd BufNewFile,BufRead *.yml.sample set filetype=yaml
autocmd BufNewFile,BufRead *nginx/**/*.conf,*nginx.conf* set filetype=nginx
autocmd BufNewFile,BufRead *unicorn.conf* set filetype=ruby
autocmd BufNewFile,BufRead *.rabl set filetype=ruby
autocmd BufNewFile,BufRead *.jbuilder set filetype=ruby

" Per-file settings
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType java setlocal shiftwidth=4 tabstop=4
autocmd FileType eruby setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType go setlocal shiftwidth=4 tabstop=4

" Disable arrow keys (omg, dafuq i'm doing)
noremap <right> <nop>
noremap <left> <nop>
noremap <up> <nop>
noremap <down> <nop>

inoremap <right> <nop>
inoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" Switch highlighting back off using <Leader>/
nnoremap <silent> <leader>/ :set invhlsearch<CR>

" Toggle NERDTree
map <leader><return> :NERDTreeToggle<CR>

" Toggle CtrlPFunky
nnoremap <Leader>f :CtrlPFunky<CR>
