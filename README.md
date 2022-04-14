# Build a new OS environment

## Usage
run
```bash
./setenv.sh
```
Choose options  
  1) Use default path: `~`  
  2) Enter user path: `/home/ruby`  
  3) Exit  


## Install packages
### Debian
ubuntu, kubuntu, linux mint, kali
```bash
sudo apt install -y vim git tmux g++ cmake\
    xbindkeys xdotool
```


## 設定檔
在`/home/user`裡的檔案  

### 中文輸入法fcitx  
`.xessionrc`  

### 滑鼠設定
[xbindkeys](https://steward-fu.github.io/website/phone/n900/maemo/xbindkeys.htm)  
`.xbindkeysrc`  
```bash
sudo apt-get install xbindkeys xdotool
```
`.imwheelrc`  

### bash  
`.bashrc`  

### tmux  
`.tmux.conf`  

### vim  
`.vimrc`  
```vimrc
" Vundle
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
plugin 'chiel92/vim-autoformat'
" Cursor
plugin 'wincent/terminus'
" Syntax checking
Plugin 'scrooloose/syntastic'
```




## ssh key
`~/.ssh/id_rsa`: 私鑰  
`~/.ssh/id_rsa.pub`: 公鑰  

`/etc/ssh/ssh_config`  
`ssh_config`: 多重 ssh key 管理，clone 免輸密碼


