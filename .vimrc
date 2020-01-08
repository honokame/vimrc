syntax on

colorscheme molokai
set t_Co=256
set fenc=utf-8
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
""call plug#begin()
""Plug 'lervag/vimtex'
""call plug#end()

""let g:vimtex_compiler_latexmk = {
""      \ 'background': 1,
""      \ 'build_dir': '',
""      \ 'continuous': 1,
""      \ 'options': [
""      \    '-pdfdvi', 
""      \    '-verbose',
""      \    '-file-line-error',
""      \    '-synctex=1',
""      \    '-interaction=nonstopmode',
""      \],
""      \}

""let g:vimtex_view_general_viewer
""      \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
""let g:vimtex_view_general_options = '-r @line @pdf @tex'

"表示
""inoremap { {}<Left>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
filetype indent on
set smartindent
set autoindent
set relativenumber 
set title 
set showmatch 
set tabstop=2 
set shiftwidth=2
set wildmenu
set history=5000
"set whichwrap=b,s,h,l,<,>,[,],~ 
"set backspace=indent,eol,start
set cursorline
set ruler
set hidden
set virtualedit=block
set virtualedit=onemore
set expandtab
set laststatus=2
set clipboard=unnamed,autoselecy
set completeopt=menuone
set noswapfile 

set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
  exec "imap <expr> " . k . " pumvisible() ? '" . k . "' : '" . k . "\<C-X>\<C-P>\<C-N>'"
endfor

set incsearch
set ignorecase 
set smartcase 
set wrapscan
set nowrap
set hlsearch
nnoremap <Esc><Esc> :nohlsearch<CR> 

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

