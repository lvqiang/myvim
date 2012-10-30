" -----------------  Author: rainbow 
" -----------------  Email: lv.rainbow.free@gmail.com 
" -----------------  Date: 2012-10-27
" -----------------  For MAC 

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 基本配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=1000   "设置vim history行数
filetype indent on "针对不同的文件类型采用不同的缩进格式
filetype plugin on "针对不同的文件类型加载对应的插件

set autoread "设置自动读取外部修改文件

"设置leader
let mapleader=","
let g:mapleader=","

set nocompatible "设置关闭兼容模式

set ruler "设置右下角显示光标位置的状态行
set cmdheight=2 "设置命令行高度2

" 不设定在插入状态无法用退格键和 Delete 键删除回车符
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

set number "设置自动开启行数现实

set laststatus=2 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" 关闭提示音
set noerrorbells
set novisualbell
set vb t_vb=

set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 主题，字体，颜色设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme elflord     " 着色模式：黄色和粉红色为主
set background=dark     " 设置背景颜色     
set guifont=Monaco:h11  " 字体 && 字号
set encoding=utf8       " 设置编码

syntax on               " 打开语法高亮 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 编辑设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent               " 自动对齐
set expandtab                " 将Tab自动转化成空格
set ai!                      " 设置自动缩进
set smartindent              " 智能自动缩进
set shiftwidth=2             " 换行时行间交错使用2空格
set cindent shiftwidth=2     " 自动缩进2空格

set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,

set showmatch "显示括号配对情况

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch                " 开启实时搜索功能
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索

" 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set ignorecase
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 设置window, tab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 窗口切换
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 设置pathogen，用于安装vim插件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 设置NERDTREE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 让Tree把自己给装饰得多姿多彩漂亮点
let NERDChristmasTree=1
" 窗口宽度
let NERDTreeWinSize=31
nnoremap tt :NERDTree<CR>
" 指定鼠标模式(1.双击打开 2.单目录双文件 3.单击打开)
let NERDTreeMouseMode=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Taglist文件管理
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 不同时显示多个文件的tag，只显示当前文件的 
let Tlist_Show_One_File = 1 
" 如果taglist窗口是最后一个窗口，则退出vim 
let Tlist_Exit_OnlyWindow = 1 
nnoremap ll :TlistOpen<CR>
" 在右侧窗口中显示taglist窗口 
let Tlist_Use_Right_Window = 1 
" 文件的tag都被折叠 
let Tlist_File_Fold_Auto_Close  = 1 
let Tlist_WinWidth = 25
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 设置winManager 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:winManagerWindowLayout='NERDTree|TagList'
nmap wm :WMToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 代码补全设置 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on    "打开文件类型检测
set completeopt=longest,menu "关掉智能补全时的预览窗口
if has("autocmd")
  autocmd FileType ruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby let g:rubycomplete_buffer_loading=1
  autocmd FileType ruby let g:rubycomplete_classes_in_global=1
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => superTab设置 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-n>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctrlP设置 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
