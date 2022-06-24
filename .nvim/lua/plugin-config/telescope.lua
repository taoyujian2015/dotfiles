local status, actions = pcall(require, "telescope.actions")
if (not status) then
	return
end

require'telescope'.setup{
	defaults = {
		-- Default configuration for telescope goes here:
		-- config_key = value,
		mappings = {
			i = {
				["<M-j>"] = actions.move_selection_next,
				["<M-k>"] = actions.move_selection_previous,
			}
		},
		file_ignore_patterns = {".git"},
	},
	extensions = {
	},
}
--按键设置
vim.api.nvim_set_keymap("n", "<leader>ff", [[<cmd>lua require('telescope.builtin').find_files()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fg", [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fb", [[<cmd>lua require('telescope.builtin').buffers()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fh", [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>sf", [[<cmd>lua require('telescope.builtin').file_browser()<cr>]], {})
