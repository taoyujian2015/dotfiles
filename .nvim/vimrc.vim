
"----vim 个人使用习惯配置start------
set termguicolors
set encoding=utf8
set guifont=Fira\ Code:h10
" leader设置成空格
let mapleader=" "
" 使用鼠标
set mouse=c
" 显示行号
set nu
" 相对行号
set relativenumber
" tab=4个空格
set tabstop=4
set shiftwidth=4
" 改变 vim中光标的形状
" let g:db_ui_use_nerd_fonts=1
" let &t_SI.="\e[5 q" "SI = INSERT mode
" let &t_SR.="\e[4 q" "SR = REPLACE mode
" let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)
" 高度光标所在行
"set cursorline
" 设置不换行
"set nowrap
set wrap
" 显示按下的按键
set showcmd
" 按tab显示菜单
set wildmenu
" 不需要备份文件
set nobackup
" 主题
set background=dark
autocmd vimenter * colorscheme gruvbox
"----vim 个人使用习惯配置end------
"ssh 远程粘贴板
if executable('clipboard-provider')
    let g:clipboard = {
          \ 'name': 'myClipboard',
          \     'copy': {
          \         '+': 'clipboard-provider copy',
          \         '*': 'env COPY_PROVIDERS=tmux clipboard-provider copy',
          \     },
          \     'paste': {
          \         '+': 'clipboard-provider paste',
          \         '*': 'env COPY_PROVIDERS=tmux clipboard-provider paste',
          \     },
          \ }
endif

" 文件类型设置 "{{{
" ---------------------------------------------------------------------
" JSX 语法高亮
" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx,*.js set filetype=typescriptreact
