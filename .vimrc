syntax on
colorscheme molokai
set t_Co=256

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

"表示
set relativenumber 
set title 
set showmatch 
set tabstop=2 
set shiftwidth=2
set smartindent
set autoindent
set wildmenu
set history=5000
set whichwrap=b,s,h,l,<,>,[,],~ 
"set backspace=indent,eol,start
set cursorline
set ruler
set paste
set hidden
"set virtualedit=block

"検索
set incsearch
set ignorecase 
set smartcase 
set wrapscan
set hlsearch
nnoremap <Esc><Esc> :nohlsearch<CR> 

inoremap { {}<Left>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

if has('mouse')
	set mouse=a
	if has('mouse_sgr')
			set ttymouse=sgr
	elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif

