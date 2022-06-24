" 配置文件导入 "{{{
" ---------------------------------------------------------------------
" 基础使用习惯配置
runtime ./vimrc.vim
" 插件管理
"./lua/plugins.lua
lua require('plugins')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/telescope')
lua require('lsp/setup')
" 按键映射
runtime ./maps.vim

