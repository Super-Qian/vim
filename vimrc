" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
set number
set smartindent
syntax on
set nocompatible

set go=
"set lines=35 columns=100
syntax on
"set cursorline
"set cursorcolumn 
set guifont=yahei\ consolas\ hybrid:h13
set anti enc=utf-8
set guifont=source\ code\ pro:h13
imap jf <Esc>
imap fj <Esc>:
autocmd InsertLeave * se nocul "高亮当前行
autocmd InsertEnter * se cul
set ruler 
set nu
set showcmd
set cmdheight=1
set scrolloff=5
set nocompatible
"set viminfo += !
filetype on
filetype indent on
"set iskeyword += $,@,%,#,-	"带有如下符号的单词不要被换行
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
:match OverLength '\%10000v.*'
set nobackup
setlocal noswapfile
set bufhidden=hide
"set linespace
set wildmenu	"增强模式中的命令行自动完成
set backspace=2
set whichwrap+=b,s,<,>,h,l,[,]	" 允许backspace和光标键跨行
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set noerrorbells
set fillchars=vert:\ ,stl:\ ,stlnc:\
set showmatch
set matchtime=5
set ignorecase
set incsearch
set nohlsearch
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 
set scrolloff=3
set laststatus=2	" 显示状态行
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\ %{strftime(\"%H:%M-%d\")}
"set spell
set autoindent	"继承前一行的缩进方式
set smartindent
set cindent
set smarttab
set foldenable
set foldcolumn=0
set foldmethod=indent 
set foldlevel=5
set foldenable  
set guicursor=a:blinkon600-blinkoff600 " Slow down cursor blinking speed
set ts=4
set sw=4
" omni complete
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>
" tab switch 
nmap <C-Tab> :tabn<CR>
nmap <C-S-Tab> :tabp<CR>
nmap <C-t> :tabnew<CR>


" 编码设置
set encoding=utf-8	" 在windows上将这项改为utf-8会导致消息文本乱码
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936
"set fileencoding=cp936
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages en_US.utf-8
"language messages zh_CN.utf-8

" 插件设置
nnoremap df :NERDTreeToggle<CR>
let NERDTreeDirArrows=0

" 下面5行用来解决gVim菜单栏和右键菜单乱码问题
set encoding=utf8
set langmenu=zh_CN.UTF-8
set imcmdline
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 解决gVim中提示框乱码
language message zh_CN.UTF-8
