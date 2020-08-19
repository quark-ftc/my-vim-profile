set nocompatible "不与 Vi 兼容（采用 Vim 自己的操作命令）
set showmode "在底部显示，当前处于命令模式还是插入模式。
set showcmd "命令模式下，在底部显示，当前键入的指令。比如，键入的指令是2y3d，那么底部就会显示2y3，当键入d的时候，操作完成，显示消失。 
set mouse=a "支持使用鼠标
set encoding=utf-8 "使用 utf-8 编码。
set t_Co=256 "启用256色
filetype indent on "启文件类型检查，并且载入与该类型对应的缩进规则。比如，如果编辑的是.py文件，Vim 就是会找 Python 的缩进规则
set autoindent "按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致。
set tabstop=4 "按下 Tab 键时，Vim 显示的空格数。
set shiftwidth=4 "在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数
set number "显示行号
set relativenumber "显示光标所在的当前行的行号，其他行都为相对于该行的相对行号。
set  ruler "在状态栏显示光标的当前位置（位于哪一行哪一列）。
set showmatch "光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。
set hlsearch "搜索时，高亮显示匹配结果。
set incsearch "输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果。
set ignorecase "搜索时忽略大小写。
set smartcase "如果同时打开了ignorecase，那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感。比如，搜索Test时，将不匹配test；搜索test时，将匹配Test。


"""""""""""""""""""""""""""""""""""""""""""""""""vim-plug"""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/luochen1990/rainbow'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'https://github.com/Yggdroot/indentLine'
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""vim-plug"""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""https://github.com/luochen1990/rainbow""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold','start=/</ end=/>/ fold'],
\	'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}
""""""""""""""""""""""""""""""""""""""""""""""""""""https://github.com/luochen1990/rainbow""""""""""""""""""""""""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""""""""""""""""""""""https://github.com/Yggdroot/indentLine""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""https://github.com/Yggdroot/indentLine""""""""""""""""""""""""""""""""""""""""""""""""""""""
