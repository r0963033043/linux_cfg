set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

set tabstop=2       " 設定 Tab 長度為 4
set shiftwidth=2    " 自動縮排長度為 4
set expandtab       " 插入空白鍵(Space)取代 Tab
retab               " 取代原有的 Tab 到新的設定
" High light unwanted spaces in end of line
highlight ExtraWhitespace ctermbg=darkred guibg=darkcyan
autocmd BufEnter * if &ft != 'help' | match ExtraWhitespace /\s\+$/ | endif
autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif

set ai              " 自動縮排 手動切換至貼上模式 :set paste
set background=dark " 啟用暗色背景模式
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


" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
"Plugin 'gmarik/vundle'

"Plugin 'ntpeters/vim-better-whitespace'
"Plugin 'rhysd/vim-clang-format'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
"Plugin 'tomasiser/vim-code-dark'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

"color codedark

