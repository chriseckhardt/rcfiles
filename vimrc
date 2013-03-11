" --- Eckhardt's vim file --- "
" Tim Pope's Pathogen
" https://github.com/tpope/vim-pathogen
" ---
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
set nocompatible
colors desert
syntax on
set gfn=Inconsolata\ Medium\ 14
set cursorline                  " Highlight current line
set hlsearch
set incsearch
set laststatus=2                " Always show status line
set listchars=tab:▸\ ,eol:¬
set mat=5                       " Bracket blinking.
set modelines=0
set mouse=a                     " Mouse in all modes
set mousehide                   " Hide mouse after chars typed
set noerrorbells                " No noise.
set novisualbell                " No blinking .
set nowrap                      " Line wrapping off
set nu                          " Line numbers on
set relativenumber
set ruler                       " show line & column no. of cursor
set scrolloff=3                 " min no. of screen lines above & below cursor
set shiftwidth=2
set showmatch
set smarttab
set textwidth=79
set visualbell
set wrap
set encoding=utf-8
set autoindent                  " self-explanatory
set showmode                    " indicate input or replace mode at bottom
set showcmd                     " show information about current command
set hidden                      " don't destroy buffer when abandonded
set wildmenu                    " cli completion via <Tab>
set wildmode=list:longest
set ttyfast
set backspace=indent,eol,start
set undofile
"let mapleader = ","
"nnoremap / /\v
"vnoremap / /\v
set ignorecase
set smartcase
set gdefault
"nnoremap <leader><space> :noh<cr>
"nnoremap <tab> %
"vnoremap <tab> %
set formatoptions=qrn1
set colorcolumn=80
set list
"nnoremap ; :
"au FocusLost * :wa
"comment/uncomment blocks of code (in vmode)
"vmap _c :s/^/#/gi<Enter>
"vmap _C :s/^#//gi<Enter>
" Set formatting based on FileType
autocmd FileType make set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab 
autocmd FileType python set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType ruby set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType c set tabstop=8 softtabstop=8 shiftwidth=8 expandtab
autocmd FileType java set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" Perl specific
let perl_include_pod = 1 " include pod

" RSpec
" http://drasticcode.com/2009/8/27/how-to-run-rspec-specs-from-vim
" Execute open rspec buffer
function! RunSpec(args)
  if exists("b:rails_root") && filereadable(b:rails_root . "/script/rspec")
    let rspec = b:rails_root . "script/rspec"
  else
    let rspec = "rspec"
  end
  let cmd = ":! " . rspec . " % -cfn " . a:args
  execute cmd
endfunction
" Mappings
" run one rspec example or describe block based on cursor position
"map !s :call RunSpec("-l " . <C-r>=line('.')<CR>)
" run full rspec file
"map !S :call RunSpec("")

" ---
" Rails IDE
" http://biodegradablegeek.com/2007/12/using-vim-as-a-complete-ruby-on-rails-ide
" --- Add recently accessed projects menu (project plugin)
set viminfo^=!
" --- Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
" --- alt+n or alt+p to navigate between entries in QuickFix
"map   :cp 
"map   :cn 
" --- Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'
set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set history=256        " Number of things to remember in history.
set autowrite          " Writes on make/shell commands
set timeoutlen=250     " Time to wait after ESC (default causes an annoying delay)
" --- Formatting (some of these are for coding in C and C++)
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
" --- Backups & Files
" --- The following requires creation of the target directories
set backup                   " Enable creation of backup files
set backupdir=~/.vim/backups " Where backups will go
set directory=~/.vim/tmp     " Where temporary files will go

