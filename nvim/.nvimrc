"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/greg/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/greg/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-rbenv'
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-sleuth'
NeoBundle 't9md/vim-ruby-xmpfilter'
NeoBundle 'csexton/trailertrash.vim'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'rking/ag.vim'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'skalnik/vim-vroom'

" Themes
NeoBundle 'whatyouhide/vim-gotham'

" Enable support for 256 colours
set t_Co=256

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

 " xmpfilter mappings for marking lines & running

nmap <buffer> <F4> <Plug>(xmpfilter-run)
xmap <buffer> <F4> <Plug>(xmpfilter-run)
imap <buffer> <F4> <Plug>(xmpfilter-run)
nmap <buffer> <F3> <Plug>(xmpfilter-mark)
xmap <buffer> <F3> <Plug>(xmpfilter-mark)
imap <buffer> <F3> <Plug>(xmpfilter-mark)

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set encoding=utf8

" Enable filetype detection, filetype indenting & filetype plugins
filetype plugin indent on
" We want syntax highlighting
syntax on
"
" Line highlighting
set cursorline
" Incremental search as you type
set incsearch
" Highlight current top result of search
set hlsearch
" Clear the initial highlight after sourcing

set lazyredraw
set noswapfile
set nobackup
set nowritebackup

"colorscheme gotham256
"colorscheme pencil
colorscheme gotham

" Always show vim-airline
set laststatus=2

" Show line numbers
set number

" Powerline fonts
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" remove trailing whitespace
autocmd BufWritePre *.* :%s/\s\+$//e

