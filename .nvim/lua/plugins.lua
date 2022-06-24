local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})	--默认地址
	vim.cmd 'packadd packer.nvim'
end
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup({
	function()
		-- Packer can manage itself
		use 'wbthomason/packer.nvim'
		-- 主题
		use 'morhetz/gruvbox'
		-- 状态栏
		use {
			"vim-airline/vim-airline",
			requires = {
				"vim-airline/vim-airline-themes",
				 --综合图标支持such vim-airline lightline, vim-startify
				 "ryanoasis/vim-devicons",
			}
		}
		-- nvim-tree
		use {'kyazdani42/nvim-tree.lua',requires ='kyazdani42/nvim-web-devicons'}
		-- tab头美化
		use {'akinsho/bufferline.nvim',requires = 'kyazdani42/nvim-web-devicons'}
		-- telescope文件搜索
		use {'nvim-telescope/telescope.nvim',requires = { {'nvim-lua/plenary.nvim'} } }
		-- 语法高亮
		use {'nvim-treesitter/nvim-treesitter',run=':TSUpdate'}
		-- LSP
		use {'neovim/nvim-lspconfig','williamboman/nvim-lsp-installer',}
		--markdown预览插件
		-- install without yarn or npm
		use({
			"iamcco/markdown-preview.nvim",
			run = function() vim.fn["mkdp#util#install"]() end,
		})
	end,
	config = {
		max_jobs = 16,
		git = { clone_timeout = 60, default_url_format = "git@github.com:%s" },
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}
})