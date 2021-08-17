set nocompatible     " No compatibility with the original vi
set autoindent       " Automatic indentation
set cindent          " Automatic indentation for C
set smartindent      " Smart indentation
set wrap
set nowrapscan       " 검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup         " Do not create backup files
set noswapfile
"set visualbell      " Refresh screen on invalid keyboard input
set ruler            " Display the current position of cursor (line, cell)
set shiftwidth=4     " 4 automatic indentation
set number           " Display row index, set nu is possible
set fencs=ucs-bom,utf-8,euc-kr.latin1 " Encode Korean files to euc-kr and unicode files to unicode
set fileencoding=utf-8 " Encode saved file as utf-8
set tenc=utf-8       " Set terminal encoding as utf-8
"set expandtab       " White space instead of tab
set hlsearch         " Highlight search keyword, set hls is possible
set ignorecase       " Ignore upper / lower cases on search, set ic is possible
set tabstop=4        " Replace tab to 4 white spaces
set lbr
set cursorline       " Draw line below the line being edited
set incsearch        " Accumulative search on keyword input
set laststatus=2     " Use improved status bar
filetype indent on   " Different syntax highlighting for different types of files 
set background=dark  " Highlighting light / dark 
set backspace=eol,start,indent "  줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로
set history=1000     " vi 편집기록 기억갯수 .viminfo에 기록
highlight Comment term=bold cterm=bold ctermfg=4 " 코멘트 하이라이트
" set mouse=a          " Enable mouse in Vim
set t_Co=256         " Adjust color
filetype off                  " required

" Use syntax highlighting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("syntax")
	syntax on
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Color Theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme gruvbox 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Github repo plugin
Plugin 'tpope/vim-fugitive'

" Command-t for quick file navigation
Plugin 'git://git.wincent.com/command-t.git'

" Jedi
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jedi for Python auto completion
Plugin 'davidhalter/jedi-vim'
let g:jedi#show_call_signatures=0 " Do not display function call signatures (set to 1 to activate)
let g:jedi#popup_select_first="0" " Do not display pop-up at auto completion
let g:jedi#force_py_version=3

" YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe for auto completion
Plugin 'Valloric/YouCompleteMe'

" Path to YouCompleteMe config file
let g:ycm_global_ycm_extra_conf = "~/vimrc/.ycm_c-c++_conf.py"

" YouCompleteMe settings
let g_ycm_min_num_of_chars_for_completion = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Nerd-Tree for finding files
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" <`> NERDTree
map ` :NERDTreeToggle<cr>
