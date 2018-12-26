set number
set list
set title
set virtualedit=onemore

set matchpairs& matchpairs+=<:>

set ignorecase
set clipboard&
set clipboard^=unnamedplus
set mouse=a
set autoindent
set smartindent
set copyindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowritebackup
set nobackup
set noswapfile
set laststatus=2
hi Pmenu guifg=white guibg=grey

colorscheme desert

inoremap <silent> jj <ESC>
inoremap <silent> kk <ESC>
nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk
augroup file_type
    autocmd!
    autocmd BufNewFile,BufRead *.launch setf xml
    autocmd BufNewFile,BufRead in.* set filetype=lis
augroup END


" dein configurations

let g:dein#install_progress_type = 'title'

" dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let s:config_home = empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME
let s:nvim_home = s:config_home . '/nvim'

" If dein is not installed, install dein
let s:cache_home = s:config_home . '/.cache'
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
    call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif

" Required:
let &runtimepath = s:dein_repo_dir . ',' . &runtimepath

" toml files
let s:toml_dir = s:nvim_home . '/toml'
let s:toml_file = s:toml_dir . '/dein.toml'

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:toml_file, {'lazy': 0})

  " Required:
  call dein#end()
  call dein#save_state()

endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

filetype plugin indent on
syntax enable

"autocmd vimenter * NERDTree
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
