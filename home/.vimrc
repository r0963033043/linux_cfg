set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

set background=dark " 啟用暗色背景模式
"set termguicolors " if you want to run vim in a terminal


set tabstop=4       " 設定 Tab 長度為 4
set shiftwidth=4    " 自動縮排長度為 4
set expandtab       " 插入空白鍵(Space)取代 Tab
retab               " 取代原有的 Tab 到新的設定
" High light unwanted spaces in end of line
highlight ExtraWhitespace ctermbg=darkred guibg=darkcyan
autocmd BufEnter * if &ft != 'help' | match ExtraWhitespace /\s\+$/ | endif
autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif

set ai              " 自動縮排 手動切換至貼上模式 :set paste
"set cursorline      " 顯示目前的游標位置
set hls             " 標記關鍵字
set number          " 顯示行號
"set relativenumber " 顯示相對行號
set wrap            " 字數過長時換行
set autochdir       " 自動切換當前目錄

"set autoindent     " 開啟自動縮排, 對齊上一行
"set smartindent    " 開啟智慧縮排, 針對括號調整縮排
set cindent         " 加上程式語法, 根據符號縮排

set formatoptions-=r    " 不要自動註解

set ic              " 搜尋不分大小寫
set hlsearch        " 設定高亮度顯示搜尋結果
set incsearch       " 在關鍵字還沒完全輸入完畢前就顯示結果

" Chinese
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
" fcitx


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

"-------------- PLUGINS STARTS -----------------
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Markdown
Plugin 'gabrielelana/vim-markdown'

" Theme
syntax enable
colorscheme moneyforward

" File system explorer
Plugin 'preservim/nerdtree'

" Browse the tags of the file
Plugin 'majutsushi/tagbar'

Plugin 'preservim/nerdcommenter'

" vim vlang format
Plugin 'Chiel92/vim-autoformat'

" Cursor
Plugin 'wincent/terminus'

" Syntax checking
Plugin 'scrooloose/syntastic'
" Syntastic config start
" https://noob.tw/vim-syntastic/
set statusline+=%#warningmsg#
"let statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'
" Syntastic config end


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
"-------------- PLUGINS END --------------------
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
"":PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
""auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

